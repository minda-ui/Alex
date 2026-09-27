# Change log — 2026-09-16 — Daily Hub Reconcile (unattended, `trig_01EMsc8Bn7c3a75q9cfr981c`)

_Append-only dated session file (Alex KB). See `current-state.md`, `processed-items-ledger.md` row 8, and `CHARTER.md` §9a. This is the second scheduled fire of the daily Hub reconcile routine (first fire: 2026-09-15, see ledger row 5)._

## What this run did

Read all four Hub Smartsheet sheets (Roster `8154403007760260`, Tasks & Requests `8860839228606340`,
Achievements `4569101748012932`, Help & Lessons `7780569054316420`) in full, and listed the published
dashboard's `roster`/`tasks`/`achievements`/`help` database collections. No `REQ-` prefixed doc existed on
the board in `tasks` or `help` this run — nothing to mint or push Smartsheet-ward.

**Pulled Smartsheet → board**, two passes (see "Verification caught two gaps" below for why two):

- **Tasks** — `AWT-0010` (`request`) and `AWT-0012` (`response`) brought in line with Smartsheet: both fields
  had been edited on Smartsheet after the board's last sync (an inserted clarifying clause on AWT-0010; an
  added follow-up paragraph on AWT-0012) and the board still held the older, shorter text.
- **Achievements** — three Smartsheet rows had no matching board doc at all and were added as new docs
  `a9` (Helen, "Construction content unblocked..."), `a10` (Peter, "First document registered and filed
  under the new §2c owner-authorised exception"), `a11` (Alex, "Weekly Housekeeping sweep completed").
- **Help & Lessons** — `HL-0007` (`answer`), `HL-0009` (`context`, `answer`, and — caught on the verify
  pass — `status`: Smartsheet had flipped it to Resolved but the board write recorded in the 2026-09-16
  Achievements sweep (`a11`) never actually landed on the board doc itself), `HL-0010` (`problem`,
  `context`, `answer`), `HL-0011` (`context`, `appliesTo`, `owner` — and, caught on the verify pass, `answer`:
  see below), `HL-0012` (`problem`) — all brought in line with fuller/updated Smartsheet text.

**Verification caught two gaps on the first pass.** Per the standing AX-3/HL-0005 discipline (never trust a
write response alone), re-read a sample of the just-written docs. `HL-0011`'s `answer` field came back as the
*old* interim text ("Alex recreated the file from the git mirror") even though the batch write hadn't touched
`answer` at all — meaning the comparison that judged `answer` "already matching" before the batch was wrong
(a same-session read/compare slip over a very long field, not a tool fault). Re-diffed directly against the
Smartsheet cell and corrected it to the real final text (Minda restored the file from Drive Trash). The same
re-check surfaced `HL-0009` still reading `Answered` on the board when Smartsheet had it as `Resolved`. Both
fixed as separate pinned writes and re-verified by a further read; both now match Smartsheet exactly.

**Left alone, on purpose (a judgement call, not drift).** Three Roster rows (Alex, Darius, Victoria) have a
`full` field on the board reading "Name — Title" while Smartsheet's own `Employee` cell for those same rows
holds only the short name; and Victoria's board `reach` field splits her Smartsheet `Reach` cell's text
differently across the board's separate `role`/`reach` fields (adding a board-only clause, dropping a
lead-in that duplicates the board's `role` field). Both look like the board's original, deliberately richer
formatting from when these rows were first built, not incremental edits Smartsheet has since pulled ahead
of — unlike every other fix in this run, which was Smartsheet visibly having *more* text than a trimmed
board copy, this is the reverse shape (board has more/better-organised text than Smartsheet's terser cell).
Overwriting it would strip information from the published dashboard for no evidenced reason. Not touched;
not escalated as a Help & Lessons row either, since it is cosmetic, stable since at least the 2026-09-15
board sync, and never flagged by Minda or any employee as wrong.

**No board doc orphaned from Smartsheet this run** — every board `tasks`/`help`/`roster`/`achievements` doc
(pre- and post-write) has a matching Smartsheet row.

## Scope

Hub-only (§9a), all four collections, both directions checked. No Drive KB touched (own or sister). No
Rung-2 sister-KB write. Nothing published/republished on the dashboard artifact itself (out of reach for an
unattended routine — see CHARTER.md's standing note on that).
