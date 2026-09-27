# Change log — 2026-09-23 (sixth entry) — Estate Authority Boundaries law + Register

_Append-only dated session file. See `current-state.md` and `CHARTER.md` §7._

## Session — 2026-09-23 (continued)

Minda: "We start losing order in the Fishbone Group. We need to create law across estate, which
governors boundaries who can do that. Because now I see everyone can do everything, and it's
wrong. We need to work as a team, not as athletes on field and track. Plan, and sell me your idea."

**Pitched before building.** Diagnosed the actual cause: "who may do what" lived only as prose
scattered across nine charters, never checked against each other, plus two real symptoms — the
2026-09-20 AWT-0040 impersonation incident, and Eugene's own charter reading "edits code/repos/KB
directly" with no scope on whose KB. Proposed: a default-deny rule (act unattended only in your own
domain), a one-domain-one-owner table, and a central Authority Register instead of scattered prose
— rollout respecting the existing Raw/-only channel throughout. Minda: "I like it. Let's go."

**Audit before drafting.** Rather than assume the domain table from memory, spawned eight Explore
subagents (Rachel, Helen, Peter, Anna, Victoria, Darius, then Eugene and John once early findings
warranted a closer look) to read every current `CHARTER.md`/`CLAUDE.md` verbatim and report back
structured findings — the same discipline Rule C already asks of Alex, applied at estate scale.

**Findings, in brief:**
- **Helen, John** — cleanly and tightly scoped, no material concerns; John is in fact narrower than
 the group summary implied (still attended/dry-run-then-tick, Gmail capped to internal hand-off).
- **Darius** — the most restrictive charter in the estate; one naming-collision risk (his own
 Workshop "Document Register" vs. the shared group one), already flagged unresolved in his own KB.
- **Rachel** — well-scoped overall; one real over-grant (M365 `Mail.Send` + full mailbox r/w,
 unused) and the Loans-KB write grant is the first precedent for cross-employee KB write, which her
 own charter flags as a scope-creep risk.
- **Anna** — well-scoped in the operative clause; one internal inconsistency (a lane-table line
 describes her Construction-KB grant as "nothing barred," broader than the actual bounded grant).
- **Peter** — a real concern: his §2c exception lets him judge "data-filling vs. action" himself
 and then unilaterally file into the Financial Archive/a company KB, fully unattended, no human
 checkpoint — already needed one same-day correction in practice. Also shares live write access to
 the `ops@` mailbox with Victoria, guarded only by prose.
- **Victoria** — well-scoped, propose/coordinate/append only, the Raw/-only safeguard is explicit
 and reads as a direct response to the AWT-0040 incident she herself ran.
- **Eugene** — the biggest structural gap: can unilaterally scaffold an entire new employee's KB
 (charter, control files, git seed), overlapping with Victoria's separate "help stand up, brief and
 register new employees" authority, with no document naming who proposes, builds, or approves. His
 Drive-write-into-the-new-KB exception also sits unreconciled against the estate's Raw/-only rule.

**Built, within Alex's own Rung-1 authority (group KB + Hub, nothing touching any other KB):**
- `Process-Estate-Authority-Boundaries.md` (9,679 B, group KB Wiki) — the law itself: the
 default-deny rule, the one-domain-one-owner table (Alex/Rachel/Eugene/Helen/Darius/Anna/Peter/
 John/Victoria), how a grant is made from here on, and an Open Questions section naming all 7
 findings for Minda's ruling.
- **Authority Register** (new Smartsheet, "Fishbone AI Workforce" workspace, id `3026197560821636`)
 — 18 rows: 9 domain rows plus 9 cross-domain grant/finding rows, 7 marked `Needs Review`.

**Deliberately stopped there.** No employee's own charter was edited, and no Raw/ proposal went out
to anyone — these seven findings are substance decisions (does Peter's judgment call get capped?
who owns employee-scaffolding? is Rachel's M365 grant revoked or re-ratified?), which per charter
§2c go to Minda, not a unilateral fix, and per the Rung ladder are Rung 3/4 territory (changing
substance) rather than the mechanical Rung-1 work this session actually did.

Updated `current-state.md` (8,647 B → 7,498 B, byte-verified) — Hub row now names the new Register
sheet; Last-session cell replaced with this work; Next-action leads with "awaiting Minda's ruling"
rather than a new proposal, and folds in the still-outstanding `00_INDEX.md` update this session
missed (the new Wiki article isn't listed there yet).

**Pending / carried forward:** Minda's ruling on the 7 `Needs Review` rows (blocks any further
broadcast); `00_INDEX.md` update for the new article (small, not yet done); everything else
unchanged from the prior entry (charter-split responses, Rule D/E propagation, board reconciliation,
`AWT-0058`, `AX-14`, git-mirror catch-up, the six sister KBs' AWT-0034 adoption).
