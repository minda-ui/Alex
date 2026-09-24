# Change Log — 2026-09-21 (afternoon session): Rule C rollout closed out, Hub Drift Watch false-alarm fixed (HL-0033), scheduled-routine charter-read audit, Peter's inbox frequency raised to 6x/day

_Session following directly on from the same day's Rule C rollout and the weekly Housekeeping sweep. Four pieces of work, listed in the order they happened; every claim below was verified directly against the live system it concerns (Smartsheet, a Drive file, or a scheduled trigger) before being recorded, per Rule C itself._

## 1. Rule C rollout — closed out

All 7 sister-employee Raw/-hand-off closures (`AWT-0049` Rachel, `AWT-0050` Eugene, `AWT-0051` Helen, `AWT-0052` Darius, `AWT-0053` John, `AWT-0054` Victoria, `AWT-0055` Peter) were confirmed **Done** by a direct Smartsheet read, not from agent hand-back messages — two of them (Helen's `AWT-0051`, John's `AWT-0053`) were found Done *before* their own hand-back arrived in this conversation, which is exactly the failure mode Rule C exists to catch. `Alex KB/_escalations/2026-09-20_Escalation_Reporting-Back-Reliability-Gap.md` was updated to status **RESOLVED**, with the full closure detail appended to it rather than left as an open proposal. The board Artifact db `tasks` collection was updated with all 7 rows to keep it in step with Smartsheet.

## 2. Hub Drift Watch false alarm — root-caused and fixed (HL-0033)

Ledger items 115–118 (from an earlier, separate attended session and the Hub Drift Watch routine itself) had claimed 9 Tasks & Requests rows (`AWT-0038`, `AWT-0039`, `AWT-0042`–`AWT-0048`) and 7 Help & Lessons rows (`HL-0024`–`HL-0030`) did not exist in either sheet. A direct re-check found all 16 rows fully intact, with real content, statuses and dates.

**Root cause, established by direct evidence, not inference:** the flagged run's own "fresh read" reported Tasks & Requests at 36 rows (highest `AWT-0037`) and Help & Lessons at 24 rows (highest `HL-0023`) — both figures matching almost exactly where the two sheets stood *before* the prior day's `AWT-0040` rollout, despite that run's own timestamp being well after it. No duplicate sheet exists anywhere in the workspace (checked via Smartsheet search), and the routine's own stored prompt names the correct live sheet ids — the same ids this session read successfully. The balance of evidence points to that one run's Smartsheet read returning a stale/cached snapshot, reported as current fact rather than flagged as suspicious.

**Logged:** `HL-0033` on the Hub (Status Resolved), with the root cause and a suggested fix.

**Fixed:** drafted a **stale-read guard** (a new step 2a) for the Hub Drift Watch routine's own prompt (`trig_01EMsc8Bn7c3a75q9cfr981c`) — before trusting a Smartsheet read, it now compares that sheet's row count and highest Task ID / Ref number against the board Artifact mirror's own count for that collection (the board can only be at or behind Smartsheet, never ahead, since it's a synced copy). A read that comes back *behind* the board is re-read once; if it's still behind, the routine stops for that sheet, reports the regression itself, and does not name any row as missing. Alex cannot call `update_trigger` on a routine it did not create, so the full replacement prompt was handed to Minda to paste into the routine's page in the routines form. Verified byte-identical against the live trigger afterward.

**This guard has already worked once in production**, unprompted: ledger item 126 (a later, independent Hub Drift Watch run) shows it catching a genuine tool-side sampled/truncated read (`isSampled=true`, 47 of 55 rows returned) and correctly re-reading with narrower columns to get the true 55, rather than reporting 8 real rows as missing — the exact failure this session existed to prevent, caught by the fix on its first real test.

## 3. Scheduled-routine charter-read audit — four routines patched

Prompted by the question of whether a rule like Rule C reaches every routine that should have it. Checked all 11 of the estate's scheduled Routines directly (via `list_triggers`) for whether each one re-reads its own charter/current-state fresh at the start of a run — the mechanism that lets a future rule change reach a routine automatically, rather than needing a hand-copied prompt patch every time a rule changes.

**Already correct, no action needed:** Helen's and Eugene's Task Check-in routines, Peter's Companies House research routine, and the group master-index sync all explicitly re-read their charter/CLAUDE.md fresh from Drive each run.

**Found and fixed:**
- **Victoria — Morning Coordination Sweep** (`trig_016bvDs9fBzSB5SYRdq49Pni`) and **Victoria — Afternoon Coordination Sweep** (`trig_01UYN6FZLdSEa2a5J7rqRXE8`) referenced Victoria's charter only as background framing, with no actual "go read it" step. Added a step 0 to each: read the live CHARTER.md fresh, apply whatever standing rules it currently records (named explicitly: Rules A–C), and verify digest claims against this run's own reads rather than memory of an earlier step.
- **Peter — group inbox triage, morning and afternoon** (`trig_01EwBQzsyGrpuLCtCcgzVgkP`, `trig_013vb2UJivYb1P2xhxPnQC19`) were deliberately self-contained ("everything you need is in this prompt") with no charter re-read at all. Added a "charter & rules check" step before Request-Pool Intake, same substance as above.
- **Alex — weekly Housekeeping sweep** (`trig_01JMX63UDr55nJrTfhrcKBrC`) ambiguously cited both the live Drive `CHARTER.md` and the `minda-ui/Alex` git mirror as if interchangeable — but the git mirror is confirmed stale (still v3, missing the Hub Coordination Standard and Rules A–C entirely; see `current-state.md`'s own Git mirror row). Rewrote that line to state Drive is the sole authoritative source, with a one-line note explaining why, and added the same Rules A–C application note.

**Correctly left alone:** Household Servicing weekly check-in and Minda's 6-month progress check-in — different systems entirely, no Hub involvement.

All four patches were handed to Minda as full replacement-prompt files (same routines-form paste-in route as the Hub Drift Watch fix) and, after she applied them, verified byte-identical against the live triggers — one round-trip caught a single dropped leading character ("Y" in "You are Peter") on both Peter triggers from the paste, flagged and confirmed fixed on the next check.

## 4. Peter's inbox-triage frequency — 2×/day → 6×/day

Minda's instruction: check the group inbox six times a working day, at 07:00, 09:00, 11:00, 13:00, 15:00 and 17:00 UK time. Planned before executing:

- Confirmed the existing dedup logic (Gmail thread-id against Peter's own processed log) already generalises correctly to any number of daily runs — no logic change needed, only the prompt's "twice a day" framing.
- Checked the two live triggers directly: both currently run every day of the week, no weekday restriction. Asked Minda whether the new 6× schedule should keep 7-day coverage or restrict to Mon–Fri; she chose to keep every day, so inbox monitoring (invoices, regulator deadlines, fraud alerts) doesn't stop over the weekend.
- Converted UK local times to UTC cron for the current BST offset (UK is UTC+1 until UK clocks go back on the last Sunday of October): `0 6/8/10/12/14/16 * * *` for 07:00/09:00/11:00/13:00/15:00/17:00 UK respectively. Flagged that this is the same twice-yearly DST-shift maintenance that already applied to the original 2 runs, now spanning 6 (7, counting Hub Drift Watch's own cron, which is hour-agnostic and unaffected).

Minda repurposed the 2 existing triggers (`trig_01EwBQzsyGrpuLCtCcgzVgkP` → 07:00, `trig_013vb2UJivYb1P2xhxPnQC19` → 15:00, unchanged) and created 4 new ones (`trig_01MKqXuQJMDTrGb13Ap7qXYj` 09:00, `trig_01LEgeHQCbDQmiNfxiFS1a97` 11:00, `trig_014AyNLSVL8Hgxusoi2irono` 13:00, `trig_01SxQVArYJ7arD38t6HtqtMu` 17:00), all six sharing one updated prompt (which also carries the charter-read step from item 3 above). All six verified directly: cron expressions correct for BST, prompt content byte-identical across all six. A follow-up trigger-naming cleanup (labels reading as UK local time rather than UTC hours) was also verified.

## Sources

- Direct Smartsheet reads: Tasks & Requests (`8860839228606340`), Help & Lessons (`7780569054316420`).
- `processed-items-ledger.md` items 115–128 (Hub Drift Watch history, including the guard's first production catch at item 126).
- `list_triggers` reads of all 11 scheduled Routines, before and after each patch.
- `HL-0033` (Help & Lessons, Resolved).
- `AX-8`, `AX-9`, `AX-10` (this KB's `open-issues.md`).
- `_escalations/2026-09-20_Escalation_Reporting-Back-Reliability-Gap.md` (RESOLVED).
