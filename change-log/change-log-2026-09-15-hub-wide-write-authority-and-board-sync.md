# Change log — 2026-09-15 — Hub-wide write authority granted; git mirror + Hub board synced

_Append-only dated session file (Alex's own KB). See `current-state.md` and `CHARTER.md` §0/§7._

## Session — 2026-09-15: charter amendment (§9a), git-mirror drift closed, Hub board synced for all employees

**Charter amended (§9a, permanent, owner-authorised).** Minda asked Alex to update the whole "Fishbone AI
Workforce" Hub, not only its own rows. Alex's charter previously limited Hub writes to its own rows only
(§2a, §8: "nothing wider on that workspace"). Confirmed explicitly with Minda that this should be a
**permanent** widening, not a one-off exception, and recorded it as a new **§9a — Hub-wide write authority**:
Alex may now write any row on the Hub (Roster, Tasks & Requests, Achievements, Help & Lessons) for any
employee, not only itself. This is a separate axis from the KB control-release ladder in §9 — it does **not**
touch Rung 2 (writing into another employee's own Drive KB), which stays unauthorised. Old `CHARTER.md`
archived (`Archive/CHARTER.md (archived 2026-09-15, superseded by §9a Hub-wide-write amendment)`); new
`CHARTER.md` (15,717 B) created and byte-verified against local.

**Own-KB drift found and closed.** This git mirror (`minda-ui/Alex`) had fallen behind Drive since the first
Housekeeping sweep (AX-2) completed 2026-09-14 evening:
- `current-state.md` and `open-issues.md` still showed AX-2 as **Open**, with no AX-3/AX-4 at all — Drive
  already had AX-2 **Resolved** plus AX-3 (Drive upload-size tooling limit) and AX-4 (cross-KB undocumented-
  edit pattern), both Open.
- `Sweeps/2026-09-14_Housekeeping-Sweep_v1.md` (the AX-2 digest) was missing entirely from the mirror.
- Two change-log files existed in Drive (`change-log-2026-09-14-kb-stood-up.md`,
  `change-log-2026-09-14-first-housekeeping-sweep.md`) that had never been mirrored.
- `processed-items-ledger.md` was missing the AX-2 sweep row.

All of the above were copied byte-for-byte from Drive (base64 round-trip, byte-count verified against each
Drive `fileSize` before writing) — this is exactly the git-mirror-in-step discipline `current-state.md` calls
for, not new content Alex invented. `external-source-register.md` was already an exact match; untouched.

**AI Workforce Hub board synced (§9a, first use of the widened authority).** Cross-checked each employee's own
Drive `current-state.md` against their Hub rows and updated only what that employee's own KB already
documents:
- **Peter** — Roster `Routines` corrected from "routine pending creation" to the 3 routines actually live
  (group-inbox 2×/day + Companies House weekly); `Last run`/`Next run` set (2026-09-14 / 2026-09-21, both
  blank before). `AWT-0001` → **In Progress** (routine live, 83 ledger rows, but no discrete "combined run
  summary" file found — flagged for Peter/Minda to confirm rather than guessed as Done). `AWT-0002` → **Done**
  (Companies House beat-2b run: 28/28 API calls OK, 0 changes vs baseline, two confirmation-statement
  deadlines noted).
- **Helen** — Roster `Home KB` corrected from "git minda-ui/Helen (repo pending)" to "seeded 2026-09-14,
  HI-1 resolved" (the repo exists and PR #1 landed). `AWT-0007` → **In Progress** (Amfa's 3-post set is done;
  Construction/Properties still blocked on their own Brand-and-Voice work not existing yet — not guessed as
  complete).
- **Eugene** — checked; his own `current-state.md` predates `AWT-0003`/`AWT-0004` (created after his last
  session), so both are genuinely still Open. No change made — nothing to mirror yet.
- Nothing invented: every Hub field/Response above restates a fact already sitting in that employee's own
  Drive KB; no judgement call made on their behalf.

**Second staleness found: the published Hub board (`AXSRC-4`), not just Smartsheet.** After the Smartsheet
sync above, Minda reported the board still showed Alex as "Building". Investigation found the board Artifact
keeps its **own** database (`roster`/`tasks`/`achievements`/`help` collections), seeded once at each
employee's creation (2026-09-14) and never updated since — the **daily reconcile routine** meant to keep it in
step with Smartsheet is `AWT-0004` (Eugene's), still Open, so it has never run. The board's own store still had
Alex `status:"Building"`, `AWT-0008`/`AWT-0009` `"Open"`, no `HL-0005`, and none of today's Peter/Helen updates.

**Fixed:** synced the board's four collections to the now-current Smartsheet state in one atomic batch (11
writes) — Alex/Peter/Helen roster fields, `AWT-0001/0002/0007/0008/0009` status+response, two new Achievements
rows (`a7` the AX-2 sweep, `a8` this session), and `HL-0005`. Every value mirrors what Smartsheet (and, behind
it, each employee's own KB) already says — nothing invented for another employee.

**This is a one-off catch-up, not a fix.** Without `AWT-0004`'s reconcile routine, the board and Smartsheet
will drift apart again the next time either changes. Flagged in `current-state.md`'s Next action.

**Open at end of session:** `AX-3` and `AX-4` unchanged (still open, still a human/Eugene decision). Peter's
AWT-0001 "combined run summary" question is now visible on the Hub for Peter/Minda to resolve, not something
Alex decided unilaterally. `AWT-0004` remains the real fix for the board-db staleness.

**Nudged Eugene on `AWT-0004`, at Minda's request.** No live Eugene session was reachable to message directly
(peer-agent messaging only reaches sessions currently running), so the nudge went through the shared system
instead: raised `AWT-0004`'s Priority to **Critical** on both Smartsheet and the board db, with the response
text citing today's concrete incident (the board showing Alex "Building" hours after Smartsheet already said
Active) as the evidence. Eugene has no scheduled routine yet (interactive-only), so this surfaces the next
time Minda or Eugene opens a session there — it does not itself make the routine exist.
