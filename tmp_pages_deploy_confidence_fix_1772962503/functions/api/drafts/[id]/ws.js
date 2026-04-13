import { ensureSchemaAndSeed } from "../../../_lib/schema.js";
import { applyDraftOperation, getDraftState, requireDraftAccess } from "../../../_lib/drafts.js";
import { verifyJWT } from "../../../_lib/auth.js";

const rooms = globalThis.__songbookDraftRooms || new Map();
globalThis.__songbookDraftRooms = rooms;

function sendSafe(ws, payload) {
  try {
    ws.send(JSON.stringify(payload));
  } catch {}
}

function presencePayloadFromClients(clients) {
  return {
    type: "presence",
    users: [...clients.values()].map((client) => ({
      user_id: client.userId,
      nickname: client.nickname,
    })),
  };
}

function broadcastClients(clients, payload) {
  for (const client of clients.values()) {
    sendSafe(client.ws, payload);
  }
}

function getRoom(draftId) {
  let room = rooms.get(draftId);
  if (!room) {
    room = { draftId, clients: new Map() };
    rooms.set(draftId, room);
  }
  return room;
}

function extractToken(request) {
  const url = new URL(request.url);
  const fromQuery = String(url.searchParams.get("token") || "").trim();
  if (fromQuery) return fromQuery;
  const authHeader = String(request.headers.get("authorization") || "");
  if (!authHeader.toLowerCase().startsWith("bearer ")) return "";
  return authHeader.slice(7).trim();
}

async function getAccessWithToken(env, request, draftId) {
  const token = extractToken(request);
  if (!token) return null;
  const payload = await verifyJWT(env.JWT_SECRET, token);
  if (!payload?.sub) return null;
  const headers = new Headers(request.headers);
  headers.set("Authorization", `Bearer ${token}`);
  const authRequest = new Request(request.url, { method: request.method, headers });
  return requireDraftAccess(env, authRequest, draftId);
}

function addClient(clients, access, ws) {
  const clientId = `${access.userId}:${crypto.randomUUID()}`;
  clients.set(clientId, {
    id: clientId,
    userId: access.userId,
    nickname: String(access.auth.nickname || access.auth.email || access.userId),
    ws,
  });
  return clientId;
}

async function attachRealtimeSocket({ env, draftId, access, ws, clients, onDisconnect }) {
  const state = await getDraftState(env, draftId);
  sendSafe(ws, {
    type: "joined",
    draft_id: draftId,
    user_id: access.userId,
    version: state?.draft?.version ?? 0,
  });
  sendSafe(ws, {
    type: "snapshot",
    draft_id: draftId,
    state,
  });
  broadcastClients(clients, presencePayloadFromClients(clients));

  ws.addEventListener("message", async (event) => {
    let incoming = null;
    try {
      incoming = JSON.parse(String(event.data || "{}"));
    } catch {
      sendSafe(ws, { type: "error", message: "Invalid JSON payload" });
      return;
    }

    const type = String(incoming?.type || "").trim();
    if (type === "ping") {
      sendSafe(ws, { type: "pong", ts: Date.now() });
      return;
    }
    if (type === "join") {
      const fresh = await getDraftState(env, draftId);
      sendSafe(ws, {
        type: "joined",
        draft_id: draftId,
        user_id: access.userId,
        version: fresh?.draft?.version ?? 0,
      });
      sendSafe(ws, { type: "snapshot", draft_id: draftId, state: fresh });
      broadcastClients(clients, presencePayloadFromClients(clients));
      return;
    }
    if (type !== "op") {
      sendSafe(ws, { type: "error", message: "Unsupported websocket event" });
      return;
    }

    try {
      const out = await applyDraftOperation(env, {
        draftId,
        userId: access.userId,
        op: incoming,
      });
      broadcastClients(clients, {
        type: "op_applied",
        draft_id: draftId,
        client_op_id: out.client_op_id,
        version: out.version,
      });
      broadcastClients(clients, {
        type: "op_persisted",
        draft_id: draftId,
        client_op_id: out.client_op_id,
        version: out.version,
      });
      if (out.conflict) {
        broadcastClients(clients, {
          type: "conflict_created",
          draft_id: draftId,
          version: out.version,
          ...out.conflict,
        });
      }
      const nextState = await getDraftState(env, draftId);
      broadcastClients(clients, { type: "snapshot", draft_id: draftId, state: nextState });
    } catch (cause) {
      sendSafe(ws, { type: "error", message: String(cause?.message || "Operation failed") });
    }
  });

  ws.addEventListener("close", onDisconnect);
  ws.addEventListener("error", onDisconnect);
}

function hasDraftRoomBinding(env) {
  return !!env?.DRAFT_ROOMS && typeof env.DRAFT_ROOMS.getByName === "function";
}

export class DraftRoomDO {
  constructor(state, env) {
    this.state = state;
    this.env = env;
    this.clients = new Map();
  }

  async fetch(request) {
    await ensureSchemaAndSeed(this.env);
    if (request.headers.get("Upgrade")?.toLowerCase() !== "websocket") {
      return new Response("Expected websocket", { status: 426 });
    }

    const url = new URL(request.url);
    const draftId = String(request.headers.get("x-draft-id") || url.searchParams.get("draft_id") || "").trim();
    if (!draftId) return new Response("draft_id is required", { status: 400 });

    const access = await getAccessWithToken(this.env, request, draftId);
    if (!access || access instanceof Response) {
      return access instanceof Response ? access : new Response("Unauthorized", { status: 401 });
    }

    const pair = new WebSocketPair();
    const [client, server] = Object.values(pair);
    server.accept();

    const clientId = addClient(this.clients, access, server);
    const disconnect = () => {
      this.clients.delete(clientId);
      if (this.clients.size) {
        broadcastClients(this.clients, presencePayloadFromClients(this.clients));
      }
    };

    await attachRealtimeSocket({
      env: this.env,
      draftId,
      access,
      ws: server,
      clients: this.clients,
      onDisconnect: disconnect,
    });

    return new Response(null, { status: 101, webSocket: client });
  }
}

export async function onRequestGet({ env, request, params }) {
  await ensureSchemaAndSeed(env);
  const draftId = String(params.id || "").trim();
  if (request.headers.get("Upgrade")?.toLowerCase() !== "websocket") {
    return new Response("Expected websocket", { status: 426 });
  }

  if (hasDraftRoomBinding(env)) {
    const stub = env.DRAFT_ROOMS.getByName(`draft:${draftId}`);
    const headers = new Headers(request.headers);
    headers.set("x-draft-id", draftId);
    const url = new URL(request.url);
    const doRequest = new Request(url.toString(), {
      method: request.method,
      headers,
    });
    return stub.fetch(doRequest);
  }

  const access = await getAccessWithToken(env, request, draftId);
  if (!access || access instanceof Response) {
    return access instanceof Response ? access : new Response("Unauthorized", { status: 401 });
  }

  const pair = new WebSocketPair();
  const [client, server] = Object.values(pair);
  server.accept();

  const room = getRoom(draftId);
  const clientId = addClient(room.clients, access, server);

  const close = () => {
    room.clients.delete(clientId);
    if (!room.clients.size) {
      rooms.delete(draftId);
    } else {
      broadcastClients(room.clients, presencePayloadFromClients(room.clients));
    }
  };

  await attachRealtimeSocket({
    env,
    draftId,
    access,
    ws: server,
    clients: room.clients,
    onDisconnect: close,
  });

  return new Response(null, { status: 101, webSocket: client });
}

