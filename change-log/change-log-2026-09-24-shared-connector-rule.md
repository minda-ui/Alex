# Change log — 2026-09-24 (eighth entry) — Authority Register closed out, then a real gap caught and closed

_Append-only dated session file. See `current-state.md` and `CHARTER.md` §7._

## Session — 2026-09-24

**Morning check-ins.** Minda opened with "Good morning" and asked for a status pass. Confirmed
overnight movement on `AWT-0079` (Helen, adopted the charter split, git partly blocked by `HI-6`)
and `AWT-0082` (Darius, adopted the split *principle* but not the exact shape — his file's bulk
was append-only lessons and a live snapshot, not rules, so he split four ways by update cadence
instead of three by role, with a documented byte-count analysis before touching anything).

**`AWT-0083` closed.** Minda confirmed she'd removed both of Victoria's routines touching `ops@`.
Marked the task Done, updated the Authority Register's `ops@` row to Active.

**Repeated re-checks tracked the remaining five charter-fold proposals to closure** over several
rounds: `AWT-0086` (Peter — folded both the §2c trail and sole `ops@` ownership into
`Charter-Rules.md`, verifying `AWT-0083` was actually Done before removing superseded "shared with
Victoria" text — Rule C discipline applied to his own charter edit); `AWT-0084` (Eugene) and
`AWT-0085` (Victoria) — both folded in the new-employee-scaffolding sequence and the Raw/-only
exception cleanly; `AWT-0087` (Darius) — went **Blocked**, not simply Done: he checked his own
sheet's columns before renaming anything and caught that the proposed name ("Machinery & Asset
Log") would have collided with his own separate "Machinery Register - Database" sheet, since his
sheet is actually a document log, not an asset log. Proposed "Workshop Document Log (local
mirror)" instead, confirmed independently that no Smartsheet tool can rename a sheet (matching
Alex's own earlier finding), and left the block correctly assigned to Minda, not himself. Minda
renamed the sheet directly; confirmed via `get_sheet_path`. `AWT-0088` (Anna) closed last — §4
reworded to point at the §5a bound, cosmetic only, her own change-log entry written.

**Register updated live after each of the above** — by the time all five tasks and `AWT-0083`
were Done/Blocked-then-resolved, 6 of the original 7 findings were genuinely closed (Finding 4 had
already closed the day before).

**Then Rachel's M365 grant (`RA-22`) surfaced a real problem.** Minda reported she'd revoked/
narrowed it in the admin console and that Rachel confirmed it. Rather than close the Register row
on that word alone, checked it directly with `mcp__Microsoft_365__get_granted_scopes` — first
assuming (wrongly) that the connector visible in this session belonged to a different identity
(`info@fishbonedrylining.onmicrosoft.com`, resolved via `get_me` as "Mindaugas Gaudiesius") and so
couldn't verify Rachel's specific grant. Minda corrected that: **this is the same connector Rachel
uses.** Re-checked on that basis and found the scopes genuinely unchanged — `Mail.Send`,
`Files.ReadWrite.All`, full `Mail.ReadWrite` all still granted. Reported the discrepancy plainly
rather than accepting the "it's done" claim now that it could actually be checked.

Minda then named the real cause, precisely: **"So it is not connector problem, it is problem in
the rules."** The Authority Register and the law both modeled every connector as belonging to
exactly one employee, which is false here — one shared identity is used by Minda, Rachel, *and
Alex*. "Narrow Rachel's access" was never an operation that existed on a connector with one shared
scope list; there's nothing to narrow that doesn't affect all three of us.

**Fixed at the rule level, on Minda's "Yes":**
- Added a **shared-connector rule** to `Process-Estate-Authority-Boundaries.md` (archive-then-
 recreate, byte-verified, 11,897 B → 14,940 B): any connector used by more than one person is
 logged as Owner **Joint**, naming everyone who uses it; a scope change on it is proposed and
 ruled as a joint decision, never framed as narrowing one person's access; the quarterly sweep now
 also checks for undeclared shared connectors; splitting into per-person connections is named as a
 separate, later, human-executed (Eugene's/IT) decision, not assumed.
- Reopened the Register's Finding 3 row (Owner: Rachel → **Joint**), corrected its scope/review-
 note text to describe the real shared-identity situation, and added a new **Finding 8** row for
 the underlying gap itself (no single owner for the shared connector).
- Caught the same class of gap on Alex's own charter while writing this up: `current-state.md`
 had been claiming "No Gmail, Alex sends nothing" without ever accounting for this connector's
 real, working Mail.Read/Mail.Send-capable reach. Corrected the Connectors line then (archive-
 then-recreate, byte-verified) rather than leaving Alex's own documentation subject to exactly the
 "everyone can do everything, undocumented" problem this whole exercise exists to fix.

**Asked "any ideas?" on the actual scope question.** Recommended splitting into per-person
connections as the principled fix (matches "one domain, one owner" cleanly) — Minda corrected
this: the connector platform doesn't support multiple accounts, so per-person splitting isn't
achievable here. Revised the recommendation on that basis: narrow the *shared* scope to the union
of what's genuinely used across all three people, paired with a same-day Hub-task trail (Peter's
§2c pattern) as a procedural backstop where a hard technical boundary isn't possible.

**Minda: "That's why I blocked mail.send on M365 :)"** — she'd already acted, at the
connector-settings layer rather than the Entra app-registration layer. Re-checked
`get_granted_scopes` again: `Mail.Send` still listed as a consented OAuth scope, unchanged.
Explained the layer distinction (OAuth consent scope vs. connector-level/transport-level
enforcement) rather than treating the unchanged scope list as proof nothing had happened. Minda
asked for an actual send test; searching for a send-mail tool (`outlook_send_mail`) returned **no
match at all** — the tool itself isn't available to this session, a different and more suggestive
signal than the scope list, though not fully conclusive given this session's connectors had
already flickered disconnected/reconnected several times tonight (Smartsheet, GitHub, others).

**Asked directly "so can we close?"** — answered with the honest split: Finding 8 (the rule gap
itself) is solid and independently verifiable by reading the document, recommend closing it now;
Finding 3 (the actual scope) has two loose ends — `Mail.Send` inferred-but-not-conclusively-
verified blocked, and the `Files.ReadWrite.All` narrowing from the original ruling never separately
actioned. Proposed keeping Finding 3 open for those two items.

**Minda: "No. I want to finish with it."** — a direct, explicit ruling to close regardless.
Closed both Register rows on that instruction, recording the caveats plainly in each row's Review
note rather than either hiding them or refusing to close: Finding 8 closes clean (rule fix,
verifiable); Finding 3 closes on the owner's explicit word, with the verification gaps on record,
not resolved by unambiguous technical confirmation. This is squarely Minda's call to make — final
ruling authority on any `Needs Review` row was always hers per the law's own "Who keeps this
working" section, and pressing further past her explicit "finish with it" would have been
Alex overstepping that line, not exercising it. **The Authority Register now has zero rows
`Needs Review` — every finding from the 2026-09-23 audit, plus the one surfaced this session, is
closed.**

**Two honesty corrections mid-session, both surfaced rather than smoothed over:** (1) a premature
"all 7 closed, Rachel's grant done" summary was walked back within the same conversation once the
connector check actually contradicted it; (2) the "wrong identity, can't verify" excuse was
retracted the moment Minda pointed out it was the same connector, and re-checked properly rather
than left standing.

**Pending / carried forward:** `00_INDEX.md` still needs a line for
`Process-Estate-Authority-Boundaries.md` (missed at creation, still not done); `AWT-0078` (Peter's
charter-split proposal) still Open; everything else unchanged from the prior entry (board
reconciliation, `AWT-0058`, `AX-14`, git-mirror catch-up, the sister KBs' AWT-0034 adoption). The
estate authority law project itself — audit, law document, Register, all findings ruled and now
fully closed — is done, pending only routine maintenance (the quarterly sweep) going forward.
