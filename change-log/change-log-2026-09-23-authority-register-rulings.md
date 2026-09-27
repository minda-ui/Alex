# Change log — 2026-09-23 (seventh entry) — Authority Register findings ruled, one by one

_Append-only dated session file. See `current-state.md` and `CHARTER.md` §7._

## Session — 2026-09-23 (continued)

Minda: "Let's start. One thing — let's go through open questions one by one now." A direct
follow-on to the estate authority law session: seven findings had been flagged `Needs Review` in
the Authority Register and named as Open questions in `Process-Estate-Authority-Boundaries.md`
(group KB Wiki) — Minda asked to rule on each in turn.

**Walked all seven in sequence** — a proposal from Alex, a ruling from Minda, an Authority Register
update, before moving to the next:

1. **New-employee creation/scaffolding** — no single owner (Eugene could unilaterally build a KB;
 Victoria separately held "help stand up, brief and register"). Proposed a 3-step sequence:
 Victoria proposes/briefs → Minda approves → Eugene builds. Minda: "Agree." Register: Active.
2. **Peter's §2c filing judgment call** — unattended, no human checkpoint, already needed one
 same-day correction in practice. Proposed keeping the exception but adding a same-day Hub-task
 trail requirement. Minda: "Agree." Register: Active.
3. **Rachel's M365 connector grant** wider than her charter (unused `Mail.Send` + full mailbox
 r/w). Proposed revoking the unused half. Minda: "Agree." Register: Active, but flagged
 **not yet executed** — an M365 admin-console action, outside any KB, needing Minda or Eugene.
4. **Shared `ops@` mailbox** — Peter and Victoria both writing to it, guarded only by prose.
 Proposed a technical label-prefix split. **Minda corrected the diagnosis, not just the fix**:
 "When I create routine for Victoria I thought she is looking after minda@, not ops@ inbox. I
 need to stop Victoria's routine, mail is Peter." There was never supposed to be sharing —
 Victoria's coordination routine was mis-scoped at build time. Re-diagnosed per her correction:
 checked (via `ToolSearch`) whether Alex has any tool to stop or reconfigure a live claude.ai
 routine — confirmed no (only `CronList`, scoped to Alex's own session crons, not the separate
 routines-admin surface). Raised Hub task `AWT-0083` (assigned directly to Minda) as the
 execution step instead of claiming to have fixed it. Register: renamed "ops@ mailbox — sole
 ownership," kept **Needs Review** — ruling made, execution pending.
5. **Darius's Workshop "Document Register"** vs. the shared group one. Verified first, not
 assumed: searched all sheets estate-wide named "Document Register" (8 total) and pulled columns
 on Darius's — confirmed it's a genuine machinery/asset-log collision, the only one of the eight.
 Proposed renaming his sheet and adding a charter line confirming no shared-register write
 access. Minda: "Agree." **Then discovered Alex has no Smartsheet tool to rename a sheet's title**
 (only columns/rows/content) — the plan to do this mechanically was wrong. Corrected the Register
 row's note to say so and folded the rename ask into Darius's own Raw/ proposal instead of
 executing it directly. Register: kept **Needs Review** pending his action.
6. **Anna's §4 lane-table wording** ("nothing barred") broader than her actual bounded §5a grant.
 Proposed a cosmetic tightening only. Minda: "Agree." Register: Active.
7. **Eugene's Raw/-only exception** (folded from #1) — his Drive-write-into-new-KB step during
 scaffolding sat unreconciled against the estate's Raw/-only rule. Proposed naming it as the one
 explicit, named exception estate-wide, scoped to initial control-file writes during an approved
 (post-Minda-approval) scaffolding only. Minda: "Agree — and that closes all seven?" — confirmed.

**Closed the loop:**
- Corrected the Authority Register row for Finding 5 (Review note + Status) to reflect the
 sheet-rename tool gap rather than leaving the earlier "Alex will do this directly" claim to
 stand uncorrected.
- Sent five Raw/ proposal notes + matching Hub tasks — `AWT-0084` (Eugene, Findings 1+7),
 `AWT-0085` (Victoria, Finding 1 + awareness of `AWT-0083`), `AWT-0086` (Peter, Findings 2+4),
 `AWT-0087` (Darius, Finding 5, including the sheet-rename ask), `AWT-0088` (Anna, Finding 6) —
 each dropped into the recipient's own `Raw/` folder per `HL-Helen-01`, nothing edited into any
 KB directly.
- Updated `Process-Estate-Authority-Boundaries.md` (archive-then-recreate, byte-verified,
 9,679 B → 11,897 B): the Open Questions section replaced with a Findings section recording all
 seven rulings by number, and the default-deny rule text now names Eugene's exception explicitly
 instead of leaving it as an unreconciled gap.
- Updated `current-state.md` (archive-then-recreate, byte-verified, 7,498 B → 7,038 B): Hub row
 now lists `AWT-0083`–`0088`; Last-session cell replaced with this walkthrough; Next-action leads
 with watching the six new tasks and the Register's two still-open rows.

**Two of my own mistakes caught and corrected in this session, not left standing:**
- Archived `current-state.md` to the wrong folder on the first attempt (`change-log/` instead of
 `Archive/`) — caught via the same "verify against system of record" discipline this file's own
 Concurrency-note line already commits to, and re-moved before recreating.
- Had told Minda Alex would rename Darius's Smartsheet directly as part of the Q5 ruling; no such
 tool exists. Corrected the Register row and the Raw/ proposal to ask Darius instead of quietly
 dropping the commitment.

**Pending / carried forward:** `AWT-0083` (Minda's own action) and `AWT-0084`–`0088` (the five
charter-fold proposals) awaiting responses; the Register's two still-`Needs Review` rows (Rachel's
M365 grant, Darius's sheet rename) awaiting execution; `00_INDEX.md` still needs a line for
`Process-Estate-Authority-Boundaries.md` (missed at creation, still not done); everything else
unchanged from the prior entry (charter-split proposal responses, Rule D/E propagation, board
reconciliation, `AWT-0058`, `AX-14`, git-mirror catch-up, the six sister KBs' AWT-0034 adoption).
