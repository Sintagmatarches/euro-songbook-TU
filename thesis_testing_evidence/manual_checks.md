# Manual Checks

## 1. Admin moderation flow

- Goal: verify request review by a real admin account
- Preconditions: a working admin user with `proposals.review`, `proposals.approve`, and `proposals.reject`
- Exact steps:
  1. Log in as admin
  2. Open `#/admin/requests`
  3. Find a request created by `POST /api/requests`
  4. Approve one request
  5. Reject another request with a comment
- Expected result:
  - status changes from `new` to `approved` or `rejected`
  - approved request creates or updates the target song as intended
- Evidence to capture:
  - screenshots of list before/after
  - API response bodies for approve/reject
  - resulting song card or updated song record

## 2. Super-admin role assignment

- Goal: verify that only super-admin can assign admin role and permissions
- Preconditions: working super-admin account and a normal user account
- Exact steps:
  1. Log in as super-admin
  2. Open `#/admin/users`
  3. Assign `admin` role with explicit permissions and scope languages to a normal user
  4. Log in as that user and confirm new admin routes become available
  5. Attempt the same role-change operation as ordinary admin
- Expected result:
  - super-admin assignment succeeds
  - ordinary admin cannot perform super-admin-only role management
- Evidence to capture:
  - before/after user record
  - 200 response for super-admin action
  - 403 response for ordinary admin attempt

## 3. Version comparison output

- Goal: verify that diff output is actually generated inside the same song card
- Preconditions: a song with at least two versions
- Exact steps:
  1. Open `#/song/<song_with_versions>`
  2. Click `Сравнить версии` / `Compare versions`
  3. Choose left and right versions
  4. Observe the compare canvas area
- Expected result:
  - comparison output appears inside the current song card page
  - no navigation to a separate page is required
- Evidence to capture:
  - screenshots before and after entering compare mode
  - DOM capture of compare root with populated diff content

## 4. AI prompt button end-to-end behavior

- Goal: verify whether buttons only prepare prompts or perform in-app AI generation
- Preconditions: any public song page
- Exact steps:
  1. Open `#/song/<song_id>`
  2. Click each AI button
  3. Check whether a prompt dialog appears
  4. Click copy/open actions
  5. Monitor network requests in browser devtools
- Expected result:
  - prompt text is prepared locally
  - no app-owned AI inference endpoint is called
  - external ChatGPT opening is used instead of built-in generation
- Evidence to capture:
  - screenshots of prompt dialog
  - copied/opened prompt text
  - network log showing absence of internal AI-generation requests

## 5. Hidden/unpublished content guest restrictions

- Goal: verify guest visibility rules on non-public records in live runtime
- Preconditions: one unpublished song or admin-only song accessible to an authorized editor
- Exact steps:
  1. Create or locate unpublished/admin-only content
  2. Open its direct URL as authorized user
  3. Log out
  4. Open the same URL as guest
- Expected result:
  - authorized user can see/edit where allowed
  - guest receives not found or equivalent denial
- Evidence to capture:
  - authorized and guest screenshots
  - direct API responses for the same record

## 6. Confidence marking interaction

- Goal: verify non-default line-level and word-level confidence editing
- Preconditions: logged-in user with draft access
- Exact steps:
  1. Open `#/draft/<draft_id>`
  2. Change line confidence to a non-default level
  3. Select a fragment/word and assign a lower confidence
  4. Save or autosave
  5. Reload the draft
- Expected result:
  - confidence score and confidence segments persist after reload
  - UI reflects non-default confidence state
- Evidence to capture:
  - before/after screenshots
  - draft API response showing updated `confidence` and `confidence_segments`

