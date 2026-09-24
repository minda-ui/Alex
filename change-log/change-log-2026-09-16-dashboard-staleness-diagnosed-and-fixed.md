# Change log — 2026-09-16 — Dashboard staleness diagnosed and fixed; sync-status indicator added

_Append-only dated session file (Alex's own KB). See `current-state.md`. Follows the same day's
Rung-2 cycle entry._

## Session — 2026-09-16: "it's stale in a lot of places" — root causes found and closed

**Context.** Minda asked whether Fishbone Properties' `ops-board.html` architecture (no live db,
full daily republish, per-viewer localStorage state via a baked `BOARD_DATE` constant) could
explain — or should replace — our AI Workforce Hub dashboard's recurring staleness. Clarified the
actual ask: keep the Hub dashboard **interactive** (it needs a real shared write path across
viewers, which Properties' report-only board doesn't), but make it **stop going stale silently**.

**Root causes found (two, both real, neither the original `db`-capability bug):**

1. **Timing gap, not a bug.** `AWT-0012` (Eugene's Smartsheet-connector nudge) and `HL-0006`
   (Properties' References/ folder question) were both created *after* today's Daily Hub Reconcile
   routine had already run (05:10–05:15 UTC) — so they hadn't synced to the board yet and wouldn't
   until tomorrow's run. Closed immediately: pushed both docs directly to the board db
   (`roster`/`tasks`/`help` collections, via `ArtifactData`).
2. **Genuine system-of-record staleness, since 2026-09-15.** Alex's own Hub **Roster** row (the
   Smartsheet system of record, not just the board's mirror of it) never got updated when the
   second routine (`Alex — Daily Hub Reconcile`) and Rung 2 were released: the `Routines` cell still
   said only the weekly sweep, and `Reach` still said "Rung 0+1" with no mention of Rung 2. Fixed at
   the source — Smartsheet Roster row updated, then the board db `roster/alex` doc, then the
   published page's `SEED` fallback, all three brought into agreement.

**Also corrected in `SEED` while at it:** `AWT-0011`'s fallback copy still showed `Open`/no
response — Smartsheet and the board db have shown it `Done` since 2026-09-15; the static fallback
had just never been refreshed to match. This is exactly the class of drift the v2 reconcile-routine
prompt (drafted 2026-09-15, still not live — see below) exists to prevent automatically.

**Added: a permanent, visible sync-status indicator.** Borrowing the *idea* behind Properties'
`BOARD_DATE` constant (not its whole architecture) — a `SEED_SYNCED_AT` build-time timestamp is now
baked into the page at every republish, and a small `● Live` / `Snapshot from <timestamp>` label
sits in the header at all times, updated on every render and on any live→offline transition. If the
`db` capability or a viewer's connection to it ever fails again, this makes it visible immediately
— staleness is no longer silent, without giving up the composer/task-button interactivity that
needs the live store. Republished (version 7); `capabilities:{db:{}}` carried forward unchanged.

**Still open — the actual "self-updating" gap.** The Daily Hub Reconcile routine's *live* prompt is
still **v1** — the v2 addition (regenerate + republish the SEED fallback every run, mirroring
Properties' full-republish resilience) was drafted 2026-09-15 but was never actually pasted into
the routine (created via the routines form; Alex cannot edit a routine it didn't create itself).
Handed Minda the v2 prompt text again in chat for her to paste in — that is the one remaining piece
that would make the fallback keep itself current automatically, rather than only when Alex happens
to touch it by hand.

**Nothing here is a Rung-2 sister-KB action** — all writes were to the Hub (Smartsheet + board db,
§9a) and to Alex's own published Artifact, both within Alex's standing authority.
