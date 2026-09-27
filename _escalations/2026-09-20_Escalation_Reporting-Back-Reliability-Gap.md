# Escalation — Reporting-Back Reliability Gap in Cross-KB Delegation (2026-09-20)

**Status:** RESOLVED, 2026-09-21. Minda's ruling — **"Estate-wide, folded into Rules A–C"** — is now fully in effect: both of Alex's own direct-authority edits and all 7 sister-employee Raw/-hand-off closures (`AWT-0049`–`AWT-0055`) are Done, each confirmed directly against Smartsheet (not agent hand-back messages), per Rule C itself. See the 2026-09-21 update at the foot of this file for full detail.
**Raised by:** Alex, same evening the gap surfaced live.

## What happened

Tonight, propagating the new Hub Coordination Standard (Rules A+B, AWT-0040) and the Raw/-hand-off rule (HL-0023/AWT-0036) to the 7 sister employees was done by dispatching one background agent per employee, each briefed to act as that employee: read their own Raw/ hand-off note, fold the two rules into their own charter in their own conventions, and close their own Hub Tasks row.

Partway through, I reported "only 2 of 7 done" to Minda, based on which agents had sent a hand-back message into this conversation. When asked to check directly, Smartsheet showed 4 done, not 2 — one agent (Rachel's) had already fully completed its work and closed its Hub row, while my own agent-status list still showed it as "running." The hand-back message either hadn't arrived yet or arrived out of step with the real-world work. This was only caught because Minda asked for a direct check rather than accepting my summary.

For several minutes, Minda was given a materially wrong status — not because any of the underlying work was wrong, but because I equated "have I heard back from the agent" with "is the work actually done." Those are two different things, and I conflated them.

## Root cause

- A subagent's own internal "finished" signal and the delivery of its hand-back message to the parent session are not synchronised with the underlying real-world writes (Drive files, Smartsheet rows) it makes — those can land before, during, or after the hand-back arrives, or the hand-back can be delayed independently of the work.
- There was no standing rule requiring a re-check against the system of record (here, Smartsheet) before reporting delegated-work status to a human. I was trusting the messenger instead of the ledger.
- This is HL-0020's "recency is not authority" from a new angle: not a stale timestamp this time, but a stale *inference* about completion status.

## Proposed fix: a third Hub Coordination rule

Add **Rule C** alongside the Rules A and B already recorded today in `Wiki/Process-Housekeeping-and-Session-Discipline.md` and each employee's charter §0:

> **Rule C — verify against the system of record before reporting status.** Whenever work is delegated to a subagent, background process, or any other proxy, its own completion signal (a hand-back message, an internal "finished" flag, a self-reported summary) is never sufficient grounds to report that work as done, in progress, blocked, or any other status to a human. Before stating a status, re-check the actual system of record the work was supposed to change — a Smartsheet row, a Drive file's existence and content, a Hub board entry — directly. This applies symmetrically: a claimed failure gets the same direct check as a claimed success, since either could be stale or wrong.

This is deliberately scoped to *anyone who delegates work*, not just Alex. Victoria coordinates work across the workforce and could hit the same failure mode; Rachel's sandbox exercises already run multi-step drafted work that could have a smaller version of the same issue. It belongs in the shared standard, not just Alex's own charter.

## Where this should land, and how — respecting the rule it would be adding

Same propagation shape as tonight's own AWT-0040 rollout, so proposing it doesn't repeat the chaos it's meant to prevent:

1. Group Wiki `Process-Housekeeping-and-Session-Discipline.md` — add Rule C next to Rules A/B (Alex's own Rung-1 direct edit, since this is the group's own file).
2. Alex's own `CHARTER.md` §0 — same addition, direct edit (Alex's own KB).
3. The 7 sister employees + Victoria — **via the Raw/-hand-off route**, exactly like tonight's Rules A/B rollout: one hand-off note per KB, one new Hub Tasks row per employee. Not a direct edit to any of their charters.

**None of this has been done yet.** It is a proposal for Minda's review and go-ahead, not an in-flight rollout — tonight's rush is exactly the pattern this is meant to stop repeating.

## Separate, smaller matter: tonight's original rollout was not fully finished

Two of the 7 propagation rows from tonight's *first* rollout (Rules A+B themselves, not this proposal) are still genuinely open, verified directly against Smartsheet rather than agent status:

- `AWT-0045` (Darius) — Open
- `AWT-0046` (John) — Open

These are unrelated to the reporting-gap question above — the work on them just isn't finished yet. Their background agents were still running as of this write-up. I will keep checking these two directly against Smartsheet before reporting on them, not via agent status, and will close them out once genuinely done.

## What I'd like Minda's decision on, tomorrow morning

1. Approve, amend, or reject the wording of Rule C above.
2. Confirm whether it should be estate-wide (all 7 employees + Victoria + Alex) or Alex-only for now, given Alex is currently the only seat doing this style of multi-agent delegation at scale.
3. Whether to fold Rule C into the *same* Hub Coordination Standard section as Rules A/B (making it "the Hub Coordination Standard, Rules A–C") or keep it as a separate, clearly-dated addendum so today's already-closed rows (AWT-0042/0043/0044/0047/0048) aren't retroactively implied to cover something they didn't.

## Update — 2026-09-21, decision and rollout in progress

Minda's decision on all three open questions above, given directly in chat: **"Estate-wide, folded into Rules A–C."** Rule C is now recorded as the third bullet of the same Hub Coordination Standard block as Rules A/B, not a separate addendum.

Direct-authority edits (Alex's own Rung-1 reach) are done and byte-verified: `Wiki/Process-Housekeeping-and-Session-Discipline.md` (new id `1qxNYLidIRPrbfruNwgOPjGkSg4TuObxh`, 15,709 B) and Alex's own `CHARTER.md` (v4→v5, new id `1BCSvE60EnPhQHzVYfxpumiYGbGGOZmI7`, 23,150 B).

Propagated to the 7 sister employees via the Raw/-hand-off route, exactly as this escalation proposed: a new hand-off note in each employee's own `Raw/` folder plus one new Hub Tasks & Requests row each — `AWT-0049` (Rachel), `AWT-0050` (Eugene), `AWT-0051` (Helen), `AWT-0052` (Darius), `AWT-0053` (John), `AWT-0054` (Victoria), `AWT-0055` (Peter) — dispatched as 7 background agents each acting as that employee.

**All 7 are now confirmed Done, each verified directly against Smartsheet (not from agent hand-back messages), per Rule C itself** — this is the exact discipline this escalation exists to establish, and it caught two live cases in this very rollout where an agent's own completion had not yet reached Alex as a hand-back message (Helen's and John's closures were both found Done on Smartsheet before their hand-backs arrived). Rachel's own charter also hit the real headroom risk her hand-off note flagged (262 bytes free against a 31,316-byte silent-truncation ceiling) and resolved it properly (compacting duplicated history rather than risking a truncated write) before adding Rule C. Darius applied the equivalent fix for his own charter's transfer-size ceiling (HL-0030). No blockers, no truncated files, no unresolved conflicts. Board Artifact db `tasks` collection updated with all 7 rows.

The separate, smaller matter noted above (AWT-0045/AWT-0046 from the original Rules A+B rollout) closed Done on 2026-09-20/21, confirmed directly against Smartsheet, before this update was written.

## Sources

- Direct observation, 2026-09-20 — this session's own AWT-0040 propagation rollout, `ListAgents` output vs. live Smartsheet state for `AWT-0042` (Rachel).
- HL-0020 (recency is not authority) — the closest existing lesson, extended here to completion-status inference rather than file timestamps.
- AWT-0040 / HL-0023 / AWT-0036 — the Hub Coordination Standard and Raw/-hand-off rule this proposal would extend.
