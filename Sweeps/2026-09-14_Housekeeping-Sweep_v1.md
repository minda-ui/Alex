# Housekeeping Sweep — 2026-09-14 (v1)

_Alex's first estate-wide Housekeeping sweep (AX-2). Read-only drift scan of all 11 Fishbone
knowledge systems Alex has reach into, plus the Rung-1 fixes Alex applied unattended in its own KB
and the group KB. Everything else is a **proposed fix** for a human or the owning employee — Alex
does not write to those KBs. See `change-log/` (this KB and the group KB) for the exact actions
taken, and `open-issues.md` for `AX-<n>` issues raised._

## Per-KB status

| # | KB | Verdict | Rung-1 fix applied? |
|---|---|---|---|
| 1 | Fishbone Group (master index) | 🟡 Was Red, now fixed | Yes — see below |
| 2 | Alex (own KB) | 🟢 Green | Yes — backfilled a missing change-log entry |
| 3 | Fishbone Construction | 🟢 Green | n/a — read + propose only |
| 4 | Fishbone Properties | 🔴 Red | n/a — proposed only |
| 5 | Fishbone Commercial Properties | 🟢 Green | n/a — proposed only |
| 6 | Fishbone Holdings | 🔴 Red | n/a — proposed only |
| 7 | Amfa Furniture | 🟢 Green | n/a — proposed only |
| 8 | Fishbone Waste | 🔴 Red | n/a — proposed only |
| 9 | Fishbone SSAS | 🔴 Red | n/a — proposed only |
| 10 | Peter (AI Data Assistant) | 🔴 Red | n/a — proposed only |
| 11 | Eugene (AI IT Assistant) | 🔴 Red | n/a — proposed only |
| 12 | Helen (AI Content & Marketing) | 🟢 Green | n/a — proposed only |

---

## 1. Fishbone Group (master index) — was Red, now fixed at Rung 1

**Drift found:**
- `current-state.md` had been archived by an earlier same-day session but never recreated — the
  KB root had **no `current-state.md` at all** at the start of this sweep.
- The AI Workforce Hub (Smartsheet workspace, Roster/Tasks/Achievements/Help & Lessons, built
  earlier the same day) had never been registered in `external-source-register.md`.
- Helen and Alex (both created earlier the same day) were missing from `Wiki/00_INDEX.md`'s
  master index, and from `CLAUDE.md` §1's sister-systems table and §5 Live data sources.
- **Concurrent session, no conflict:** a separate session was, in parallel, seeding Alex's own git
  mirror (`minda-ui/Alex`) and creating this very sweep routine. Verified no collision before
  editing (all four group control files had stable `modifiedTime` before each edit).

**Fixed (Rung 1, this KB):**
- Recreated `current-state.md` from the KB's actual Drive state.
- Registered the AI Workforce Hub as **SRC-40–45** in `external-source-register.md`.
- Added Helen, Alex and the AI Workforce Hub to `Wiki/00_INDEX.md` (master-index row +
  `Process-Housekeeping-and-Session-Discipline.md` added to Processes; article count 9 → 10).
- Wrote `change-log/change-log-2026-09-14-alex-first-sweep.md` documenting all of the above.

**Proposed, not applied (tooling limitation — see AX-3):**
- `CLAUDE.md` §1/§5 wiring for Helen/Alex/the Hub — drafted, but the upload silently truncated at
  ~31KB (file is ~58KB). Reverted safely (original restored byte-for-byte via a metadata-only
  move, no content re-upload). A future session needs either a smaller-diff edit path for this
  file, or to split its large historical revision-log block into an archive/appendix so the live
  file stays under the upload ceiling.

---

## 2. Alex (own KB) — Green

- KB was created earlier the same day; found **no change-log entry documenting its own creation**
  (an undocumented session) and a dead cross-reference in `processed-items-ledger.md` row 1
  (pointed to a group change-log filename that was never actually created under that name).
- **Fixed:** wrote `change-log/change-log-2026-09-14-kb-stood-up.md` backfilling the creation
  session from actual Drive facts.
- No duplicate control files; folders match the charter's §5 layout.
- (The concurrent git-mirror-seeding session has since corrected the ledger/open-issues/
  current-state files itself — AX-1 is resolved and byte-verified against Drive; see this KB's own
  `open-issues.md` and `current-state.md`.)

---

## 3. Fishbone Construction — Green
- Uses a different (but internally consistent) convention: dated `Outputs/change-log-*.md` files
  and a consolidated `Outputs/kb-registers.md` in place of the four-file/`change-log/` layout.
  Audited against its own documented convention.
- `kb-registers.md` (12/09 19:33) postdates the newest change-log entry and the newest Raw file —
  one coherent session, nothing left undocumented. No activity since; quiet, not stale.
- No duplicate control files; no stub/draft Wiki-equivalent docs found.
- Ledger: 3 non-`done` rows, all already tracked (partial-period bank export, email-attachment
  capture) — nothing new for Help & Lessons.
- **No fixes needed.**

## 4. Fishbone Properties — Red
- The "standing, always-current" `Outputs/change-log.md` its own README describes has not been
  touched since **2026-08-29** (~2.5 weeks) despite dozens of dated `change-log-*.md` entries
  landing since — effectively abandoned.
- `Outputs/risk-register.md` (its de facto current-state file) was refreshed at 07:03 today but the
  KB kept moving well past that: an ops-board refresh (07:34), a renters-rights audit (10:10), a
  Raw-folder triage creating `Raw-Archive/` (14:06–14:12), and a Wiki reorg adding `Wiki/Digests/` +
  rebuilding `Wiki/index.md` (16:28–16:32) — the register is ~13 hours stale.
- Two **undocumented sessions**: the 16:28–16:32 Wiki/Digests reorg, and a brand-new **empty**
  root-level `References/` folder created at 19:59:27 — neither has a matching change-log entry.
- Several recent items (the Wiki/Digests reorg, a renters-rights-audit entry, a few Raw PDFs) are
  owned by **info@anthillhomes.co.uk** / **irina@fishboneproperties.co.uk**, not
  minda@fishboneconstruction.co.uk — other-domain accounts are actively writing into this KB.
- Help & Lessons-worthy items surfaced inside the KB's own `risk-register.md` "Needs-review"
  section (noted, not actioned): a "FP 2003 known anomaly" note in `CLAUDE.md` that hasn't
  reproduced in 13+ scans and should probably be retracted; an "AST date" column name now legally
  outdated post Renters' Rights Act 2025; a Smartsheet row-count mismatch (19 vs 21) unresolved
  since 2026-08-29.
- **Proposed fixes (for a human/Properties owner):**
  - Resume updating `Outputs/change-log.md` each session, or retire it and fix the README pointer.
  - Write (or request) a change-log entry for the 16:28–16:32 Wiki/Digests reorg and the new
    `References/` folder — or delete the folder if it was created by mistake.
  - Re-run `risk-register.md` so its "last scan" reflects today's later sessions.
  - Confirm the anthillhomes.co.uk / fishboneproperties.co.uk accounts' access and edits here are
    expected.
  - Retract the stale FP2003 anomaly note; decide the AST/periodic-tenancy column rename.

## 5. Fishbone Commercial Properties — Green
- `Outputs/kb-registers.md` (12/09 11:00) matches the newest change-log entries and `CLAUDE.md`'s
  own last edit (10:53) — one coherent session, nothing newer since.
- No duplicate control files; no stub/draft/TODO-named Wiki items spotted.
- Limitation: `kb-registers.md` is 77KB — freshness confirmed but not fully parsed for an
  open/resolved issue tally; worth a deeper read next sweep.
- **No fixes needed** from what was reviewed.

## 6. Fishbone Holdings — Red
- `Outputs/kb-registers.md` and the newest change-log both stop at 2026-09-10 15:04, but the live
  root `CLAUDE.md` was updated a day later, 2026-09-11 19:31 (a Group house-rules restructure) —
  **undocumented session**, no change-log entry or register update for that revision.
- **4 old `CLAUDE.md` versions** sit loose at KB root, correctly renamed "archived, superseded
  by…" but never actually moved into `Archive/` — clutters the root.
- Open issues: 13 open / 11 closed in `Wiki/Processes/missing-documents-checklist.md`; normal
  filing/loan follow-ups, nothing routable to Help & Lessons.
- **Proposed fixes:** log a change-log entry for the 09-11 `CLAUDE.md` restructure and refresh
  `kb-registers.md`; move the 4 stray "archived" `CLAUDE.md` copies into `Archive/`.

## 7. Amfa Furniture — Green
- `CLAUDE.md`, `kb-registers.md`, latest change-log and Wiki/Outputs activity are all internally
  consistent (last session 2026-09-12, nothing newer since). No duplicate control files.
- `Wiki/Processes/order-fulfilment-process.md` is explicitly self-tagged `status: draft` (correctly
  flagged in-file, not a stray stub).
- Open questions: 5 open (order-tracker workspace decision, workshop lease/invoicing ownership,
  directors confirmation, access review, statutory-accounts location), 3 resolved. The
  order-tracker-workspace and access-review items are fair Help & Lessons candidates
  (owner-decision-needed, not urgent).
- **No fixes needed.**

## 8. Fishbone Waste — Red
- **3 substantive `Raw/` items unprocessed since 2026-09-10 evening**: the group v1.3 document
  policy note, the incoming-paper-mail process note, and a group→Waste handoff carrying two
  document-register numbers (`FW0000001`/`FW0000002`). None appear in `kb-registers.md`'s
  processed-items table; no Wiki built from them; no change-log entry. No session since.
- Same undocumented-session pattern as Holdings: `CLAUDE.md` updated 2026-09-11 21:28 (Group
  house-rules restructure) with no matching change-log/register entry (last logged activity
  2026-09-10 15:43).
- Wiki is a skeleton (`Processes/` empty, only `index.md`) — genuinely unbuilt, not a naming issue.
- Open questions: 4 open, 0 resolved — a brand-new KB, not urgent for Help & Lessons.
- **Proposed fixes:** route the 3 unprocessed `Raw/` items (especially the FW handoff) to a proper
  Detect→Register→Extract session with a change-log entry; log the 09-11 `CLAUDE.md` restructure.

## 9. Fishbone SSAS — Red _(pension/member-data KB — cited generically only)_
- **Duplicate live control file**: two un-archived `CLAUDE.md` files sit at KB root simultaneously
  (2026-09-11 20:40 and 2026-09-12 10:45) — the older should have been archived when superseded.
- Undocumented session: `Archive/` shows a `kb-registers.md` superseded "by the Peter-confirmation
  entry" at 2026-09-12 21:15, and the live register updated 21:19 that evening, but the newest
  actual change-log file stops at 10:16 that morning — ~11 hours of register activity unlogged.
- `Wiki/index.md` (2026-09-07) is stale relative to at least one article beneath it
  (`Wiki/Employers/…`, updated 2026-09-12) — minor index drift.
- Open questions: 13 tracked, 4 resolved, ~9 with a residual open thread — normal administrative
  follow-ups with the scheme's administrator/trustee, not Help & Lessons material.
- **Proposed fixes:** archive the older/superseded root `CLAUDE.md`, keeping only the current one;
  add the missing change-log entry for the 09-12 evening register update; refresh `Wiki/index.md`.

## 10. Peter (AI Data Assistant) — Red
- Stale `current-state.md`: last touched 18:55, but `CLAUDE.md` was edited ~1h29m later the same
  day (20:24) — not reflected.
- Undocumented session: newest change-log entry (18:56) predates the 20:24 `CLAUDE.md` edit.
- Root clutter: three loose `Routine-Prompt-*.md` files sit at KB root outside any working folder.
- No duplicate control files. Open issues: 3 open (email division of labour, research beats,
  doc-capture registration — all pending Minda), 7 resolved. OI-9's platform-limitation note
  (an agent-created routine can only be disabled by its human creator) is a mild lesson worth a
  Help & Lessons note, not an action item.
- **Proposed fixes:** refresh `current-state.md` for the 20:24 edit and log a change-log entry;
  confirm whether the three root `Routine-Prompt-*.md` files belong at root or in a working folder.

## 11. Eugene (AI IT Assistant) — Red
- Stale `current-state.md`: dated 2026-09-13 18:26, while `CLAUDE.md` was edited 2026-09-14 20:06
  — over a full day later, the largest drift found in this sweep.
- Undocumented session: newest change-log entry is also from 2026-09-13 (18:35) — nothing logs the
  09-14 20:06 `CLAUDE.md` edit.
- `Hardware-Projects/` is empty (unused so far, not a defect). No duplicate control files.
- Open issues: 2 open (Gmail delegated-mailbox capability, first-runbooks priority — both awaiting
  a Minda/Eugene decision), 2 resolved. Nothing for Help & Lessons.
- **Proposed fixes:** refresh `current-state.md` to capture the 09-14 20:06 `CLAUDE.md` revision;
  add the matching change-log entry.

## 12. Helen (AI Content & Marketing) — Green
- `current-state.md` (20:18:35), `CHARTER.md`, the latest working-folder edits and the newest
  change-log entry (20:19:11) all land within about a minute of each other — clean, in-session
  sync, no stale file or undocumented session.
- No duplicate control files; `_unverified/` is empty (tidy).
- Open issues: 2 open (HI-2 no publishing account — explicitly non-blocking, HI-3 Brand-and-Voice
  build in progress), 1 resolved. Nothing for Help & Lessons.
- **No fixes needed.**

---

## Cross-KB pattern

Six of the nine read-only KBs (Properties, Holdings, Waste, SSAS, Peter, Eugene) show the **same
undocumented-session shape**: a `CLAUDE.md`/root-control-file edit lands after the KB's own
change-log/register was last updated, with no entry logging it. Holdings and Waste specifically
both trace to the same event — the 2026-09-11 "Group house-rules" restructure landing in their
`CLAUDE.md` without a change-log entry in either KB. This is the single most common and highest-
value proposed fix across the estate: worth raising as its own item (see `AX-4` below) rather than
nine separate one-line asks.

## Help & Lessons — Category mix (this sweep)

Of the 5 rows on the desk after this sweep: **Tooling / how-to** ×3 (HL-0002 Google-routing
filters, HL-0003 Smartsheet formula columns, HL-0005 Alex's Drive upload-size limit),
**Filing / routing** ×1 (HL-0001, still correctly escalated to Minda), **0** in Access/permission,
Data quality, Process gap, Governance question, Other. HL-0001 is the only row needing a human
decision right now (which company "FlexiLoan" belongs to); everything else is Resolved / Baked
into charter / newly logged as Resolved (Alex's own lesson).

## Byte-verification note

All Rung-1 uploads in this sweep were byte-verified via `get_file_metadata` immediately after
upload, per charter §9. One upload (the `CLAUDE.md` §1/§5 edit) failed verification — silently
truncated at 31,316 of 62,543 intended bytes — and was caught and reverted before it could be
mistaken for applied; see AX-3. `current-state.md` (6503 B), `external-source-register.md`
(25082 B vs 25079 B locally — a ~3-byte non-substantive transcription difference, confirmed by
full re-download, no fact altered) and `Wiki/00_INDEX.md` (18337 B, exact match) all verified
clean, 0 replacement characters, £ preserved throughout.
