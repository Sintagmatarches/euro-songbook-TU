# Defects after fix

## No comment edit/delete endpoints were found
Severity: Minor

Reproduction steps:
1. Start the local application.
2. Execute the affected route or scenario.
3. Observe the limitation described below.

Current status:
Repository inspection and route execution found GET/POST for /api/songs/:id/comments only. No runtime route exists for comment update or deletion.

Fixed in this cycle: no

## No request revision workflow endpoint was found
Severity: Minor

Reproduction steps:
1. Start the local application.
2. Execute the affected route or scenario.
3. Observe the limitation described below.

Current status:
Admin moderation exposes approve/reject only. No executable send-for-revision route was discovered.

Fixed in this cycle: no

## Browser comparison check depends on DOM evidence, not a full Playwright-style scripted assertion suite
Severity: Minor

Reproduction steps:
1. Start the local application.
2. Execute the affected route or scenario.
3. Observe the limitation described below.

Current status:
Headless Edge screenshots and DOM dumps were captured, but no separate browser test framework is installed in this repository.

Fixed in this cycle: no
