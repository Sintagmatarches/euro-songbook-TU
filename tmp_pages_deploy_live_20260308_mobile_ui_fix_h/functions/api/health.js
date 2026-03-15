import { json } from "../_lib/utils.js";
export async function onRequestGet(){ return json({ ok:true, ts: new Date().toISOString() }); }
