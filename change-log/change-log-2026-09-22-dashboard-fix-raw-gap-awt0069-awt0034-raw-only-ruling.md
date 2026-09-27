# Change log — 2026-09-22 — Dashboard fix, Raw/ gap, AWT-0069/0034 closed, Raw/-only ruling

_Append-only dated session file. See `current-state.md` and `CHARTER.md` §7._

## Session — 2026-09-22

Nine pieces of work, all verified directly against the system of record before being reported, per Rule C.

1. **Group Dashboard artifact fixed.** Root cause: `subscribeCollection` mutated a frozen document
 snapshot returned by the platform's live-data API (`o.id = d.id` on a frozen object), breaking live
 sync. Rebuilt as a clean replacement artifact rather than patching in place; all four collections
 (roster/tasks/achievements/help) re-seeded via `ArtifactData` batch writes; confirmed live with Minda.
 Old artifact (`QhMm43g5bXBxxH9kuaXmYv`) retired. Anna added to the assign-to/filter picklists. Renamed
 "Group Dashboard" per Minda's naming instruction (`https://claude.ai/artifact/CNcNL8V1epJj52WDgvPrLS`).
2. **Daily Hub Reconcile routine** (`trig_01EMsc8Bn7c3a75q9cfr981c`) updated to point at the new artifact
 URL — Minda applied the edit manually (agent-created routines can't be edited directly by an agent),
 verified afterward via `list_triggers`.
3. **Missing `Raw/` folder** found and created in this KB — a gap from the AWT-0036 Raw/-hand-off
 rollout (2026-09-20): Alex created a `Raw/` in all seven sister KBs that day but never one in its own.
 `current-state.md`'s KB-home row updated same session.
4. **`AWT-0034` closed** (both parts, picked back up after an owner-escalation note on the row overrode
 an earlier stand-down instruction). Part A: the group's `Wiki/Process-Document-Numbering-and-Filing.md`
 v1.4 (§7b, FG-CR-0001) was already live — an open issue (`AX-6`, and the group's own `OI-17`) claiming
 otherwise was a false alarm, a sweep having searched the Archive folder id by mistake; both closed.
 Group `CLAUDE.md` was genuinely stale though — §0/§3b/§6a/the Live-data-sources table all still cited
 v1.3, zero mentions of v1.4/the Financial Archive/§7b anywhere in the 64KB file. Fixed all four
 citations; archive-then-recreate; byte-verified by downloading the upload back and diffing it in full
 (a ~1,100 B size gap against the local source turned out to be only trailing-whitespace/EOF convention,
 zero real corruption — following this session's own HL-0039/HL-0040 lesson rather than trusting size
 alone). Sister-KB `Raw/` broadcast of the ruling was already done, by Victoria, before this was picked
 up. Part B (mystery duplicate control files in Rachel's KB): no rogue process — the flagged timestamps
 were Alex's own earlier repair session restoring the files; true cause was a multi-actor concurrent
 edit race (Rachel/Victoria/Minda), already mitigated (`HL-0020`, Rachel's own `CHARTER.md` §5).
5. **`AWT-0069` closed.** The group's plain-brief writing standard (Hub Coordination Standard, Rule C in
 group `CLAUDE.md` §1) folded into `CHARTER.md` §0 under its own heading ("Plain-brief writing
 standard" — kept distinct from this charter's unrelated existing Rule C so the letter never collides)
 and into `Process-Housekeeping-and-Session-Discipline.md` the same way. Both byte-verified, archived.
 Hand-off note archived.
6. **Board vs. Smartsheet reconciliation (Rule D).** Minda asked whether all AWT tasks/lessons were
 synced to the Group Dashboard board. They weren't: board `tasks` was missing 17 rows (`AWT-0060`–
 `AWT-0076`), `help` was missing 3 (`HL-0039`–`HL-0041`), and `achievements` was missing one real
 Smartsheet row (Peter's 2026-09-22 pm2 run) while holding one orphan doc with no matching Smartsheet
 row (`a-anna-standup`). Fixed: backfilled Anna's stand-up as a proper Achievements row on Smartsheet
 (mirroring the already-documented Roster fact) rather than just deleting the orphan; batch-wrote all
 21 missing docs to the board; deleted the now-redundant orphan. Verified after: all four collections
 match Smartsheet exactly (tasks 75, help 42, achievements 23, roster 11). Root cause of the drift
 itself (why hourly Hub Drift Watch didn't catch it) not yet investigated — flagged as a next action.
7. **`HL-Helen-01` closed — a genuine safety-relevant finding, not just tidying.** The 2026-09-20 Rule C
 rollout closed all seven sister-employee `CHARTER.md` edits (`AWT-0049`–`0055`) by dispatching
 background agents to act as each employee and write directly into their own governed file — not
 through the Raw/-hand-off route the charter actually requires. That impersonation path went through
 with no block, on the same self-modification class the harness's own safety classifier correctly
 hard-stopped when Helen tried the identical edit transparently, in her own session, with a full audit
 trail and Minda's explicit confirmation. Flagged to Minda directly rather than resolved alone (§2c).
 Owner ruling: Raw/ plus the KB owner's own session is now the ONLY channel for a cross-KB governed-file
 amendment — no exception for a direct edit or an impersonating agent, whatever the harness does or
 doesn't block — applying 2026-09-22 forward only; the seven already-landed edits stand as-is, not
 redone. Folded into `CHARTER.md` **v8** (§0, §2b, §2c, §9) and into
 `Process-Housekeeping-and-Session-Discipline.md`'s Raw/-hand-off section; both byte-verified, old
 versions archived. `HL-Helen-01` set Baked into charter, board mirrored.
8. **Outstanding-AWT and outstanding-items checks** (twice, live each time, per Rule A/C): only
 `AWT-0076` remains assigned to Alex, Open, blocked on Rachel's file move via `AWT-0028` — nothing for
 Alex to do until that lands. A further Help & Lessons review surfaced four rows (`HL-0023`,
 `HL-0025`/`0026`/`0027`, `HL-0017`) that look Done but are still marked Open — Minda's call: those are
 Rachel's own raised items, not Alex's to close unilaterally. Left untouched.
9. **Lesson, own practice.** `read_file_content` (escaped markdown, not byte-exact) is a safe way to
 pull a large control file's full text for editing without the base64-relay corruption hit twice in an
 earlier session on a raw `download_file_content` blob — prefer it over hand-editing base64, then
 verify the final upload by downloading it back and diffing in full rather than trusting reported size.

**Byte-verified uploads this session:** `CHARTER.md` v7 → v8 (25,855 B → 27,966 B);
`current-state.md` (three successive revisions, final 9,880 B); group `CLAUDE.md` (64,333 B → 65,330 B,
full download+diff, identical bar whitespace/EOF); `Process-Housekeeping-and-Session-Discipline.md`
(16,785 B → 19,334 B). All old versions archived, never trashed.

**Pending / carried forward:** investigate why Hub Drift Watch didn't catch the 17-task/3-lesson board
gap (item 6); recheck `AWT-0058` (not touched this session); `AX-14` low-urgency watch item; six of the
seven sister KBs (plus several employee KBs) still haven't adopted the AWT-0034 financial-document
broadcast note out of their own `Raw/` into their governing files — each owner's job, worth a spot-check
in a couple of weeks; git-mirror catch-up (Drive now far ahead of git, non-urgent).
