import {
  AUTH_SCHEMA_MARKER_KEY,
  AUTH_SCHEMA_MARKER_VALUE,
  FULL_SCHEMA_MARKER_KEY,
  FULL_SCHEMA_MARKER_VALUE,
} from "../../functions/_lib/schema.js";

function normalizeAllResult(value) {
  if (Array.isArray(value)) return { results: value };
  if (value && Array.isArray(value.results)) return value;
  return { results: [] };
}

export function createMockEnv(resolver, envOverrides = {}) {
  return {
    JWT_SECRET: "0123456789abcdef0123456789abcdef",
    DB: {
      prepare(sql) {
        return {
          bind(...params) {
            return {
              async first() {
                return (await resolver(sql, params, "first")) || null;
              },
              async all() {
                return normalizeAllResult(await resolver(sql, params, "all"));
              },
              async run() {
                return (await resolver(sql, params, "run")) || {};
              },
            };
          },
        };
      },
    },
    ...envOverrides,
  };
}

export function withFreshSchemaMarkers(resolver = async () => null) {
  return async (sql, params, method) => {
    if (
      typeof sql === "string"
      && sql.includes("SELECT value FROM app_meta WHERE key=? LIMIT 1")
      && Array.isArray(params)
      && params.length
    ) {
      if (params[0] === FULL_SCHEMA_MARKER_KEY) return { value: FULL_SCHEMA_MARKER_VALUE };
      if (params[0] === AUTH_SCHEMA_MARKER_KEY) return { value: AUTH_SCHEMA_MARKER_VALUE };
    }
    return resolver(sql, params, method);
  };
}

export async function readJson(response) {
  return response.json();
}
