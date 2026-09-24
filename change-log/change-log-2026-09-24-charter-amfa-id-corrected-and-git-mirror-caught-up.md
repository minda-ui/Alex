# Change log — 2026-09-24 (later) — Charter Amfa KB id corrected; git mirror caught up with Drive

_Append-only dated session file. See `current-state.md` and `CHARTER.md` §7._

## Session — 2026-09-24 (attended, Minda)

Minda asked Alex to check this KB's folder, then its git mirror, then to merge every branch, sync the
mirror from Drive and open a PR, and finally to fix the Amfa KB id on Drive.

### 1. Git mirror (`minda-ui/Alex`) — all branches merged, synced to Drive, PR #1

- `main` had not moved since 2026-09-15 (commit `db2e29b`), while **13 stray `claude/*` branches** sat
 unmerged: `hello-alex-yo4xdb` (29 commits, 09-15 → 09-19), `amazing-goldberg-mi4q0w` (3), and eleven
 one-commit branches from the Daily Hub Reconcile routine (`epic-clarke-l71flh` + ten
 `wizardly-darwin-*`, 09-16/17) — the routine had opened a new branch on every firing.
- All 13 merged into `claude/check-folder-alex-uf1ud4` (this session's branch, which had been identical to `main`). Every one of the routine firings had logged
 itself as ledger **item 8** (each branch was cut from the seven-row 2026-09-15 ledger); only two of those
 runs (items 28, 30) had reached the archived ledger. All ten rows are preserved verbatim, with branch and
 commit provenance, in the mirror's
 `Archive/processed-items-ledger_recovered-2026-09-16-17_unmerged-reconcile-rows.md` — not renumbered.
- The live KB was then synced from Drive: 28 differing files copied byte-for-byte, all **43** live files
 (root, `change-log/`, `Sweeps/`, `Help-Desk/`, `_escalations/`) size-matched to Drive and UTF-8 verified;
 `Raw/` added. The bulk Drive `Archive/` (100+ superseded snapshots) was **not** mirrored — left for a
 separate owner decision.
- PR: https://github.com/minda-ui/Alex/pull/1 (into `main`).

### 2. `CHARTER.md` — Amfa KB Drive id corrected (Rung 1, direct edit, own KB)

Found while syncing the mirror: §4's estate table gave the **Amfa Furniture KB** as
`1ugshCjwx2yvRXZvmtpwLcg3hUgTKN7aU` — an id that does not exist on Drive. The real folder
("AMFA Furniture Ltd - Knowledge Base") is `1ugshCjwx2yvRXZvmtpwLcg3kUgTKN7aU` (verified by metadata
lookup; also the id in Nadia's own charter). The wrong character first appears in charter **v4**
(2026-09-20); v3 had the correct id, so every later version carried it forward. Estate-wide full-text
search found the wrong id **only** in this charter's live copy and its archived v4–v8 snapshots —
archives left untouched (they are history).

Fixed in the same pass (the charter's own rule: a difference is a bug to fix in the same session):
§2a heading "at the authorised **run**" → "at the authorised **rung**" (a one-word slip in v9).

- Archive-then-recreate: the old live file (`1koSZCvUefVkVOHIJFvNcMAoh9HaeTBHd`, 20,616 B) moved to
 `Archive/` with a "superseded" title; new `CHARTER.md` is `1F2WrMZ6dwKkfU6voxu0FYwiItoGztfkK`,
 **20,617 B** (+1 B for "rung"), byte-verified against the local build.
- No substance changed: an id pointer and a typo. Charter stays **v9**; entry added to
 `Charter-History.md`.
- Group KB notified per the charter footer:
 `Fishbone Group/change-log/change-log-2026-09-24-alex-charter-amfa-id-corrected.md`.

### 3. `current-state.md` refreshed

Last session / Git mirror / Next action updated. Also corrected a stale pointer found at the first
check this session: the **Control files** line still named the ledger as id
`1LaP5Hw2hB4_hwGzEpNdw9f9Me_CvcXcQ` "live from item 126, 128 items processed"; the live ledger is
`1oBTyMJQ_AQFnmIQacdP-fjUjZoABszSk`, holding item 188 onward (items 1–187 archived).

**Concurrency caught (AX-5):** `current-state.md` had been recreated by another session at 12:28 and the
ledger by the hourly Drift Watch at 18:23, both after this session's first folder listing. Both were
re-fetched into the mirror, and this session's `current-state.md` update was rebuilt on the newer copy.

### Open after this session

- The Daily Hub Reconcile / Hub Drift Watch routine should write to one fixed branch, not a new branch
 per firing (routine prompt is Minda's to paste — propose, don't edit).
- Owner decision: whether, and how much of, the Drive `Archive/` the mirror should carry.

### Follow-up (same session)

- **PR #1 merged** into `main` as a merge commit (`1d1aae0`), so every old branch's history stays in `main`.
 Each of the 13 was checked to be an ancestor of the new `main` before deletion.
- This session could not delete them itself (branch deletes outside the session's own branch are refused
 with HTTP 403). **Minda deleted all 13 on GitHub**; confirmed by listing the repo's branches — only `main`
 and `claude/check-folder-alex-uf1ud4` remain. (Two early attempts didn't stick — GitHub's Restore button
 sits where the delete icon was.)
- `current-state.md` updated to match.
- **Owner decision (Minda):** the git mirror does **not** need Drive's `Archive/` at all. Existing `Archive/`
 files in the repo (ledger parts from old branches, and the recovered 2026-09-16/17 reconcile rows, which
 exist nowhere else) stay as history.
- **Routine branch pile-up — no fix needed.** All eleven routine branches date from 2026-09-16/17, i.e. from
 the write-capable Daily Hub Reconcile before its 2026-09-17 redesign (ledger item 29). The hourly Hub
 Drift Watch it became logs to the Drive ledger only and has opened no branch since. The live routine
 (`trig_01EMsc8Bn7c3a75q9cfr981c`) is not readable from this session, so no full replacement prompt was
 written blind; a short guard paragraph was offered to Minda instead.
