import { err } from "./utils.js";

const JWT_UNSAFE_VALUES = new Set([
  "",
  "replace_me_with_long_random_secret_before_production",
  "replace-me-with-long-random-secret-before-production",
]);

const SETUP_TOKEN_UNSAFE_VALUES = new Set([
  "",
  "replace_me_with_setup_token_if_needed",
  "replace-me-with-setup-token-if-needed",
]);

export function isUnsafeJwtSecret(value) {
  const secret = String(value || "").trim();
  if (!secret) return true;
  if (JWT_UNSAFE_VALUES.has(secret)) return true;
  return secret.length < 32;
}

export function isUnsafeSetupToken(value) {
  const token = String(value || "").trim();
  if (!token) return true;
  if (SETUP_TOKEN_UNSAFE_VALUES.has(token)) return true;
  return token.length < 20;
}

export function isSafeJwtSecret(value) {
  return !isUnsafeJwtSecret(value);
}

export function isSafeSetupToken(value) {
  return !isUnsafeSetupToken(value);
}
