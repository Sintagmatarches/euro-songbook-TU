const { defineConfig } = require("@playwright/test");

module.exports = defineConfig({
  testDir: "./out",
  testMatch: /confidence-smoke\.spec\.js/,
  timeout: 120000,
  retries: 0,
  workers: 1,
  use: {
    baseURL: "http://127.0.0.1:8788",
    headless: true,
    viewport: { width: 1440, height: 1100 },
  },
  webServer: {
    command: "powershell -NoProfile -ExecutionPolicy Bypass -File ./out/run-wrangler-smoke.ps1",
    url: "http://127.0.0.1:8788/api/health",
    timeout: 180000,
    reuseExistingServer: false,
  },
});
