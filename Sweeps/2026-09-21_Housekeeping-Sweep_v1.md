# Housekeeping Sweep — 2026-09-21 (v1)

_Weekly Housekeeping sweep, scheduled routine, fired 2026-09-21 07:17 UTC. Incremental, metadata-first:
compares against the last full sweep (`Sweeps/2026-09-14_Housekeeping-Sweep_v1.md`, the only prior one on
record) and reads live Drive metadata rather than every file's content. Unattended run — Rung 0 + 1 only;
sister-KB items below are a dry-run proposal list, not applied._

## Step 0 — Request-pool intake (Tasks & Requests, `8860839228606340`)

3 rows handled (Assigned to = Alex, Status Open/In Progress, oldest first):

- **AWT-0028** (High, filing 3 Companies House PDFs into the Financial Archive) — outside Alex's unattended
  authority (touches sister company KBs and the Financial Archive, and is financial-document filing, not
  housekeeping). Left **Open** with a note explaining why, for reassignment or an attended Rung-2 session.
- **AWT-0034** (High, Rachel's financial-document-ruling report + Rachel-KB duplicate-write investigation) —
  re-checked. Part B was already resolved. Part A's blocker, `FG-CR-0001`, has moved to **Accepted** — but
  that surfaced a new problem: the policy document it should have produced was never recreated (see `AX-6`
  below). Left **In Progress** with an updated note; no longer blocked on the group's decision, now blocked
  on the missing document.
- **AWT-0039** (Medium, index a new Wiki article into `00_INDEX.md`) — found **already done** by an earlier
  session (the live index already carries the entry and its Recently-changed note). Marked **Done**.

## Step 1 — Estate drift scan

| KB | Signal | Verdict |
|---|---|---|
| **Group** (master index) | `current-state.md` fresh (2026-09-21 06:17); no duplicate control files in root; `CLAUDE.md` and `open-issues.md` current for their own cadence. **But:** `Wiki/Process-Document-Numbering-and-Filing.md` has no live copy (see `AX-6`/`OI-17`). | 🟡 Yellow |
| **Alex (own)** | `current-state.md` fresh (updated hourly by active sessions). **But:** 3 archived `processed-items-ledger.md` copies were sitting in root instead of `Archive/`; `change-log/` missing entries for the 2026-09-20 and 2026-09-21 sessions despite `current-state.md` documenting both as done. | 🔴 Red → 🟢 fixed this session (see Step 3) |
| **Construction** | `CLAUDE.md`-only convention (no `current-state.md`/`change-log/` folder); last root edit 2026-09-11. Depth of drift unknown without a full-content read — out of this sweep's metadata-first scope. | ⚪ Unknown (light convention) |
| **Properties** | Gained a `CHARTER.md` (14,424 B, edited **today** 06:22) alongside its older `CLAUDE.md` (51,400 B, 2026-09-19). No `current-state.md`/`change-log/` folder visible at root — actively maintained by its own routines. | ⚪ Unknown (light convention, but clearly live) |
| **Commercial** | `CLAUDE.md`-only, last edit 2026-09-12 (9 days). | ⚪ Unknown (light convention) |
| **Holdings** | `CLAUDE.md`-only, last edit 2026-09-15 (6 days). | ⚪ Unknown (light convention) |
| **Amfa** | `CLAUDE.md`-only, last edit 2026-09-11 (10 days). | ⚪ Unknown (light convention) |
| **Waste** | `CLAUDE.md`-only, last edit 2026-09-11 (10 days). | ⚪ Unknown (light convention) |
| **SSAS** | `CLAUDE.md`-only, last edit 2026-09-12 (9 days). | ⚪ Unknown (light convention) |
| **Peter** | Full control-file discipline; `current-state.md`, `processed-items-ledger.md` (89 KB — worth a split soon), `CLAUDE.md`, `change-log/` all touched today. Very actively maintained. | 🟢 Green |
| **Eugene** | `CLAUDE.md` edited today (06:30), and `change-log/` has a matching entry (06:32) — the edit itself is documented. **But** `current-state.md` is 5 days stale (2026-09-16) against that newest change-log entry. | 🟡 Yellow — proposed fix below |
| **Helen** | `CHARTER.md` edited today (06:24), `change-log/` has a matching entry (06:27). **But** `current-state.md` is ~9 hours stale (2026-09-20 21:42) against that entry. | 🟡 Yellow — proposed fix below |

Notes on scope: nine of the twelve KBs (all but the group KB and Alex's own) are Rung-2 territory —
Alex may only *propose* fixes there, and never in an unattended run. Six KBs (Construction, Properties,
Commercial, Holdings, Amfa, Waste, SSAS — seven, in fact) still use a `CLAUDE.md`-only convention with no
`change-log/` folder, so "newest change-log vs newest Drive activity" can't be measured the way it can for
Alex, the group, Peter, Eugene and Helen; a full per-file scan would be needed to say more, which this
metadata-first sweep intentionally does not do every week.

## Step 2 — Proposed-fix list (sister KBs — Rung 2, dry-run, not applied)

Small, first-cycle items only, ready for an attended session with Minda's tick:

1. **Eugene KB** — refresh `current-state.md` from the KB's own newest `change-log/` entry
   (`change-log-2026-09-21-hub-coordination-rule-c.md`), archive-then-recreate.
2. **Helen KB** — refresh `current-state.md` from the KB's own newest `change-log/` entry
   (`change-log-2026-09-21-hub-coordination-rule-c-added.md`), archive-then-recreate.

Nothing else met the bar for even a proposed sister-KB fix this sweep — the seven `CLAUDE.md`-only KBs
weren't deep-read (see scope note above), and no dead links, stub articles or dead Sources URLs were found
in the material actually read this session.

## Step 3 — Rung-1 fixes applied (group KB + Alex's own KB, unattended)

**Alex's own KB:**
- Moved 3 stray archived `processed-items-ledger.md` copies (items 49-59, 71-72, 71+73; all 2026-09-19)
  from the KB root into `Archive/` — Drive `update_file` parentId change, metadata-only, no content risk.
- Backfilled `change-log-2026-09-21-rule-c-rollout-backfill.md` from `current-state.md`'s own account of
  that completed session. (First upload attempt was silently converted to an empty Google Doc by
  `create_file`'s default behaviour; caught by byte-verification, archived as an error artifact, redone
  correctly with `disableConversionToGoogleType: true`.)
- `open-issues.md` archive-then-recreated (9,270 B → 12,281 B, byte-verified): added `AX-6` (Open — the
  group's missing policy document) and `AX-7` (Resolved — this sweep's own-KB fixes, with the residual
  2026-09-20 change-log gap flagged, not backfilled).
- `processed-items-ledger.md` archive-then-recreated (item 122 added for this sweep; re-fetched the live
  id immediately beforehand since a concurrent Hub Drift Watch run had already moved it once mid-session).
- `current-state.md` archive-then-recreated to reflect all of the above.

**Group KB:**
- `open-issues.md` archive-then-recreated (35,143 B → 36,770 B, byte-verified; live id re-checked
  immediately before writing, unchanged): added **OI-17** — the canonical
  `Wiki/Process-Document-Numbering-and-Filing.md` has no live copy (v1.3 archived 2026-09-20 claiming
  supersession by v1.4 per `FG-CR-0001`, but no v1.4 file exists anywhere in the Wiki folder). No existing
  row altered. A matching group `change-log/` entry was written.

Not fixed, and not Alex's to fix: recreating the missing v1.4 policy document itself. Alex only has the
`FG-CR-0001` Resolution field's summary, not the full text, and authoring the actual policy is substance
(Rung 4) even in a KB Alex may otherwise write to unattended.

## Step 4 — Help & Lessons

See the Help & Lessons pass recorded separately this session (no new `Open` rows needed Alex's routing this
run; existing rows checked against this sweep's own findings).

## Step 5 — Issues raised

- **`AX-6`** (Alex's own KB, Open) / **`OI-17`** (group KB, Open) — the missing v1.4 policy document.
  Needs Minda/Eugene or the `FG-CR-0001` session to recreate the live article.
- **`AX-7`** (Alex's own KB, Resolved) — this sweep's own-KB duplicate-file and change-log-gap fixes, with
  one smaller residual gap flagged for the next attended session.

## Lesson for the team

`create_file` silently converts plain-text uploads to a Google Doc (and briefly reports a 1-byte size)
unless `disableConversionToGoogleType: true` and an explicit `contentMimeType` are passed — distinct from
the AX-3 large-file truncation issue (resolved 2026-09-18). Worth using on every future text upload.
