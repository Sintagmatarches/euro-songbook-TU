import { dbAll, dbGet, dbRun } from "./db.js";

const PASSWORD_HASH_COLUMNS = ["pass_hash", "password_hash", "hash", "password", "passwd"];

function normalizeColumnName(value) {
  return String(value || "").trim().toLowerCase();
}

function normalizeColumnType(value) {
  return String(value || "").trim().toLowerCase();
}

function unique(values) {
  return [...new Set(values)];
}

function escapeRegExp(value) {
  return String(value || "").replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
}

function quoteIdent(name) {
  const normalized = normalizeColumnName(name);
  if (!normalized) throw new Error("invalid SQL identifier");
  return `"${normalized.replace(/"/g, "\"\"")}"`;
}

function hasDefaultValue(column) {
  return column?.defaultValue !== null && column?.defaultValue !== undefined && String(column.defaultValue).trim() !== "";
}

function isAutoIntegerPrimaryKey(column) {
  if (!column) return false;
  return Number(column.primaryKeyOrder || 0) > 0 && normalizeColumnType(column.type).includes("int");
}

function isRequiredWithoutDefault(column) {
  return !!column && Number(column.notNull || 0) === 1 && !hasDefaultValue(column);
}

function fallbackValueForColumn(column, context) {
  const name = normalizeColumnName(column?.name);
  const type = normalizeColumnType(column?.type);
  const checkDefault = context?.checkDefaults?.[name];

  if (!name) return "";
  if (typeof checkDefault === "string" && checkDefault) return checkDefault;
  if (name === "id" || name === "user_id") return context.id;
  if (name === "email" || name.endsWith("_email")) return context.email;
  if (name === "username" || name.endsWith("_username")) return String(context.email || "").split("@")[0] || "user";
  if (name === "role" || name.endsWith("_role")) return context.role;
  if (name === "status" || name.endsWith("_status")) return "active";
  if (name === "created_at" || name === "updated_at") return context.nowIso;
  if (name.startsWith("is_") || name.endsWith("_enabled") || name.endsWith("_active") || name.endsWith("_verified")) return 1;
  if (PASSWORD_HASH_COLUMNS.includes(name)) return context.passHash;
  if (name.includes("hash") || name.includes("password")) return context.passHash;
  if (name.includes("created") || name.includes("updated") || name.includes("date") || name.includes("time")) return context.nowIso;
  if (type.includes("int") || type.includes("real") || type.includes("numeric") || type.includes("dec") || type.includes("bool")) return 0;
  if (type.includes("blob")) return new Uint8Array(0);
  return "";
}

function collectHashColumns(columns) {
  const strict = PASSWORD_HASH_COLUMNS.filter((col) => columns.includes(col));
  if (strict.length) return strict;

  // Legacy fallback for unexpected hash column names.
  const loose = columns.filter((col) => col.includes("hash") || col.includes("password"));
  return unique(loose);
}

function getColumnDef(profile, columnName) {
  const name = normalizeColumnName(columnName);
  return (profile?.columnDefs || []).find((column) => column.name === name) || null;
}

function valueForHashColumn(profile, columnName, passHash) {
  const column = getColumnDef(profile, columnName);
  const type = normalizeColumnType(column?.type);
  if (type.includes("blob")) {
    return new TextEncoder().encode(passHash);
  }
  return passHash;
}

function extractCheckInFirstValue(tableSql, columnName) {
  const sql = String(tableSql || "");
  const col = escapeRegExp(normalizeColumnName(columnName));
  if (!sql || !col) return null;

  const columnScopedPattern = new RegExp(`${col}[^,]*check\\s*\\(\\s*${col}\\s+in\\s*\\(([^)]*)\\)\\s*\\)`, "i");
  const genericPattern = new RegExp(`check\\s*\\(\\s*${col}\\s+in\\s*\\(([^)]*)\\)\\s*\\)`, "i");
  const match = sql.match(columnScopedPattern) || sql.match(genericPattern);
  if (!match?.[1]) return null;

  const firstToken = String(match[1])
    .split(",")
    .map((token) => token.trim())
    .find(Boolean);
  if (!firstToken) return null;

  const quoted = firstToken.match(/^['"](.+)['"]$/);
  if (quoted?.[1]) return quoted[1];
  return firstToken;
}

export async function getUsersTableProfile(env) {
  const rows = await dbAll(env, `PRAGMA table_info(users)`, []);
  const table = await dbGet(env, `SELECT sql FROM sqlite_master WHERE type='table' AND lower(name)=lower('users')`, []);
  const tableSql = String(table?.sql || "");
  const columnDefs = rows
    .map((row) => ({
      name: normalizeColumnName(row?.name),
      type: normalizeColumnType(row?.type),
      notNull: Number(row?.notnull || 0),
      defaultValue: row?.dflt_value ?? null,
      primaryKeyOrder: Number(row?.pk || 0),
    }))
    .filter((row) => !!row.name);
  const columns = columnDefs.map((row) => row.name);

  const hashColumns = collectHashColumns(columns);
  const checkDefaults = {};
  for (const column of columnDefs) {
    const checkValue = extractCheckInFirstValue(tableSql, column.name);
    if (checkValue !== null && checkValue !== undefined && checkValue !== "") {
      checkDefaults[column.name] = checkValue;
    }
  }
  return {
    checkDefaults,
    columnDefs,
    columns,
    hashColumns,
  };
}

export function extractPasswordHashCandidates(user) {
  const out = [];
  if (!user || typeof user !== "object") return out;

  for (const key of PASSWORD_HASH_COLUMNS) {
    const v = user[key];
    if (typeof v === "string" && v.startsWith("pbkdf2$")) out.push(v);
  }
  for (const v of Object.values(user)) {
    if (typeof v === "string" && v.startsWith("pbkdf2$")) out.push(v);
  }
  return unique(out);
}

function ensureWritableHashColumns(profile) {
  const hashColumns = Array.isArray(profile?.hashColumns)
    ? profile.hashColumns.filter((col) => normalizeColumnName(col) && profile.columns.includes(normalizeColumnName(col)))
    : [];
  if (hashColumns.length === 0) {
    throw new Error("users table has no supported password hash columns");
  }
  return hashColumns;
}

export function buildUserInsertStatement(profile, { id, email, role, passHash, nickname }) {
  const hashColumns = ensureWritableHashColumns(profile);
  const nowIso = new Date().toISOString();
  const values = new Map();
  const idColumn = getColumnDef(profile, "id");

  if (profile.columns.includes("id") && !isAutoIntegerPrimaryKey(idColumn)) values.set("id", id);
  if (profile.columns.includes("email")) values.set("email", email);
  if (profile.columns.includes("nickname")) values.set("nickname", String(nickname || "").trim() || null);
  if (profile.columns.includes("role")) values.set("role", role);
  if (profile.columns.includes("created_at")) values.set("created_at", nowIso);
  if (profile.columns.includes("updated_at")) values.set("updated_at", nowIso);
  for (const hashColumn of hashColumns) {
    values.set(hashColumn, valueForHashColumn(profile, hashColumn, passHash));
  }

  for (const column of profile.columnDefs || []) {
    if (!isRequiredWithoutDefault(column)) continue;
    if (values.has(column.name)) continue;
    if (isAutoIntegerPrimaryKey(column)) continue;
    values.set(
      column.name,
      fallbackValueForColumn(column, {
        id,
        email,
        role,
        passHash,
        nowIso,
        checkDefaults: profile.checkDefaults || {},
      })
    );
  }

  const columns = (profile.columnDefs || [])
    .map((column) => column.name)
    .filter((name) => values.has(name));
  if (columns.length === 0) throw new Error("users table has no writable columns for insert");

  const placeholders = columns.map(() => "?");
  const params = columns.map((column) => values.get(column));
  return {
    sql: `INSERT INTO users (${columns.map(quoteIdent).join(", ")}) VALUES (${placeholders.join(", ")})`,
    params,
  };
}

export function buildUserPasswordUpdateStatement(profile, { userId, email, role, passHash }) {
  const hashColumns = ensureWritableHashColumns(profile);
  const assignments = [];
  const params = [];

  if (profile.columns.includes("email")) {
    assignments.push(`${quoteIdent("email")}=?`);
    params.push(email);
  }
  for (const hashColumn of hashColumns) {
    assignments.push(`${quoteIdent(hashColumn)}=?`);
    params.push(valueForHashColumn(profile, hashColumn, passHash));
  }
  if (profile.columns.includes("role")) {
    assignments.push(`${quoteIdent("role")}=?`);
    params.push(role);
  }
  if (profile.columns.includes("updated_at")) {
    assignments.push(`${quoteIdent("updated_at")}=?`);
    params.push(new Date().toISOString());
  }
  if (assignments.length === 0) throw new Error("users table has no writable columns for update");

  let where = "";
  if (profile.columns.includes("id") && userId) {
    where = `${quoteIdent("id")}=?`;
    params.push(userId);
  } else if (profile.columns.includes("email") && email) {
    where = `lower(${quoteIdent("email")})=lower(?)`;
    params.push(email);
  } else {
    throw new Error("users table has no supported key for user update");
  }

  return {
    sql: `UPDATE users SET ${assignments.join(", ")} WHERE ${where}`,
    params,
  };
}

export async function ensurePassHashCompatibility(env) {
  const profile = await getUsersTableProfile(env);
  if (profile.columns.includes("pass_hash")) return profile;

  const legacyColumns = profile.hashColumns.filter((col) => col !== "pass_hash");
  if (legacyColumns.length === 0) return profile;

  try {
    await dbRun(env, `ALTER TABLE users ADD COLUMN pass_hash TEXT`);
  } catch (cause) {
    const message = String(cause?.message || cause || "");
    if (!message.includes("duplicate column name: pass_hash")) throw cause;
  }
  await dbRun(
    env,
    `UPDATE users
     SET ${quoteIdent("pass_hash")} = COALESCE(${quoteIdent("pass_hash")}, ${legacyColumns.map(quoteIdent).join(", ")})
     WHERE ${quoteIdent("pass_hash")} IS NULL`
  );
  return getUsersTableProfile(env);
}
