# Change log — 2026-09-17 — Group house rules copied into the Properties KB

_Append-only dated session file (Alex's own KB). See `current-state.md`._

## Session — 2026-09-17: one owner-instructed file copy into a sister KB

**Ask (Minda, attended).** Put a copy of `Process-Fishbone-Systems-House-Rules.md` into the
Fishbone Properties Ltd knowledge base.

**Dry-run presented before touching anything**, per CHARTER §9 guardrail 1–2:

- Source located and confirmed **live**: `Fishbone Group/Wiki/Process-Fishbone-Systems-House-Rules.md`,
  id `1ktx9JkB-wCp0X2VVJCaJNhbvlBeIvR6j`, 26,844 B, v1.3 (modified 2026-09-12 06:57). Its three
  predecessors are correctly archived in the group KB, so v1.3 is unambiguously the current version.
- Destination checked: **no copy of this file existed anywhere in the Properties KB** — root, `Wiki/`
  and `Wiki/Processes/` all checked. So this was an add, not an overwrite; nothing to archive.
- Two caveats raised with Minda before applying (both below). She ticked, and chose `Wiki/Processes/`
  over the KB root.

**Applied.** Native Drive `copy_file` → `Fishbone Properties/Wiki/Processes/Process-Fishbone-Systems-House-Rules.md`,
new id `12CN3Ti_hLqtVRkissUUWLKM04StyEAhx`, 26,844 B, created 17:48 UTC.
**Byte-verified: 26,844 B == 26,844 B.** Nothing else in that KB was touched.

A native copy was chosen over read-and-re-upload specifically because of `AX-3` — at 26,844 B the
file is close to the ~31KB silent-truncation ceiling. A native copy bypasses that path entirely.

**Per-action log written into the target KB** (guardrail 4):
`Fishbone Properties/Outputs/change-log-2026-09-17-group-house-rules-copied-in.md`
(id `1_Nowt_mxltb6xZ2MMMy0gLWZAmjGTRB0`, 3,300 B). Properties files its change-log entries in
`Outputs/`, not a `change-log/` folder — it has none.

## Two things flagged before applying

1. **Not a Rung-2 janitorial action.** Rung 2 covers archiving a predecessor, refreshing a stale
   control file, backfilling a change-log entry, fixing a dead link, de-duplicating a folder. Adding
   a new file to a sister KB is **additive** and is not on that list. Recorded as an explicit owner
   decision rather than stretched to fit the Rung-2 definition. Worth watching whether this class of
   ask recurs — if it does, it deserves its own named authority rather than repeated one-offs.
2. **It creates a second home for the same rules.** Properties' `CLAUDE.md` was restructured on
   2026-09-11 precisely to *link* to the group house rules instead of restating them. The copy is a
   snapshot of v1.3 and will go stale the moment the group original moves to v1.4; no routine watches
   for that. Offered the alternative (a pointer line in Properties' `CLAUDE.md`, one home, no drift);
   Minda chose the copy. The caveat is recorded in the Properties change-log entry so whoever
   maintains that KB sees it.

## AX-5 discipline paid off this session

Before the control-file writes, re-read the live ids/sizes rather than trusting what was read at
session start. **Both had moved:** the `current-state.md` (`13Lwq1cf…`) and
`processed-items-ledger.md` (`1-upq5x5…`) read at the start of this session had since been
superseded and archived by later sessions (2026-09-16 20:07 and 17:23 respectively). Writing onto
either would have silently reverted another session's work. Re-read the live versions instead.

## Blocked: the ledger row — `processed-items-ledger.md` has crossed the AX-3 ceiling

The Definition of Done wants a ledger row for this action. **It could not be written.** The live
`processed-items-ledger.md` (id `1ASH4zZ5L0D1lG5bcufI13yA0SvfNd_xT`) is now **45,720 B** — well past
`AX-3`'s ~31KB silent-truncation ceiling. A full-file archive-then-recreate is Alex's only edit
mechanism, and at this size it would truncate the ledger mid-content **without erroring**.

No attempt was made. This session is recorded in this change-log entry instead, and the gap is
called out rather than papered over.

**This is new, and it matters.** `AX-3` was logged as a problem affecting *other* KBs' large control
files (the group `CLAUDE.md` ~58KB, the group `open-issues.md` ~35KB). Alex's own ledger has now
grown into the same trap — the reprocessing guard Alex depends on is, as of today, append-blocked by
the same tooling limit Alex has been asking Minda/Eugene to unblock since 2026-09-14. Raised with
Minda; recorded under `AX-3` rather than as a new issue, since the root cause is identical.

## Scope

Nothing outward. No secrets, no personal data. No content substance changed anywhere — the copy is
byte-identical to the group original and was not edited, reformatted or annotated.
