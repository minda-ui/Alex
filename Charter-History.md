# Alex — Charter version history (split from CHARTER.md, 2026-09-23)

_Append-only. Newest entry at the top. Never edit a past entry — correct with a new one. This file
holds the full version history so that `CHARTER.md` and `Charter-Rules.md` never have to grow a
footer paragraph just to record what changed and when; it also means an ordinary rule change never
touches this file at all._

- **2026-09-24 — correction: Amfa KB Drive id in §4, and a §2a typo.** `CHARTER.md` §4 gave the Amfa
 Furniture KB as `1ugshCjwx2yvRXZvmtpwLcg3hUgTKN7aU`, which does not exist on Drive; corrected to the real
 folder `1ugshCjwx2yvRXZvmtpwLcg3kUgTKN7aU`. The wrong character entered at v4 (2026-09-20) and was
 carried forward through v9; archived v4–v8 snapshots keep it as history. Same pass: §2a heading "at the
 authorised run" → "rung". No substance changed; charter stays v9 (20,616 B → 20,617 B, new id
 `1F2WrMZ6dwKkfU6voxu0FYwiItoGztfkK`). Found while catching the git mirror up with Drive. Alex (direct
 edit, Rung-1 authority, owner-requested by Minda).
- **2026-09-23 (even later) — correction: old Rule C stays Rule C.** Minda clarified the ruling
 below: the *older* Rule C (verify-against-system-of-record, established here 2026-09-21) keeps its
 letter; the group `CLAUDE.md`'s plain-brief entry (2026-09-22, the newer of the two) is lettered
 **Rule E** instead. This reverses the entry below, which had it backwards — this charter's own Rule C
 is restored to verify-against-system-of-record (unchanged text, original position after Rule B);
 the plain-brief cross-reference paragraph now points to "group `CLAUDE.md` §1 ... Rule E". Same
 correction applied to the group's `Process-Housekeeping-and-Session-Discipline.md` and the group
 `CLAUDE.md`/`CLAUDE-Rules.md`. Alex (direct edit, Rung-1 authority).
- **2026-09-23 (later) — resolved the Rule-C naming collision.** The group `CLAUDE.md` §1
 independently named the plain-brief standard "Rule C" (2026-09-22) — the same letter this charter's
 own §0 had used since 2026-09-21 for the verify-against-system-of-record rule, a collision Alex
 flagged rather than resolving unilaterally (charter §2c). Owner ruling (Minda): "Rule C is rule C
 [plain-brief]; we need to rename other rule." §0 updated: the plain-brief entry now reads as Rule C
 in place, and the former Rule C (verify-against-system-of-record) is renamed **Rule E** — D stays
 Alex's own board-drift rule, so no letter is reused anywhere in the estate's governance documents.
 The same rename applied to the group's `Process-Housekeeping-and-Session-Discipline.md` (also
 Alex's Rung-1 authority). Not yet propagated to the seven sister `CHARTER.md` files, which only ever
 received Rules A/B (2026-09-20 broadcast, before C/D/E existed) — any future propagation goes through
 the Raw/-only channel, not a repeat broadcast.
- **2026-09-23 — split into three files.** `CHARTER.md` (v9) now holds only the stable identity/role/
 authority sections (§1–§9); §0 moved out to `Charter-Rules.md` in full; this version-history footer
 moved out to this file. Reason: every rule change was requiring the whole charter (25–28KB) to be
 reproduced and re-uploaded, which is expensive and, on a large enough file, risky (the base64-relay
 corruption hit twice earlier this same week on files this size). A rule change now only touches
 `Charter-Rules.md` (~6KB) plus one line appended here — the stable core in `CHARTER.md` is untouched.
 Owner-directed test (Minda, 2026-09-23), Alex's own KB first (Rung 1). Byte-verified, old
 single-file `CHARTER.md` v8 archived intact, nothing lost — every sentence from v8 is either in the
 new `CHARTER.md` core or in `Charter-Rules.md`.
- **2026-09-22 — Charter v8.** §0's Raw/-hand-off rule tightened to name Raw/ (plus the KB owner's own
 session) as the ONLY channel for a cross-KB governed-file amendment, explicitly ruling out a
 dispatched agent impersonating another employee to write the change in on their behalf — the exact
 gap `HL-Helen-01` exposed, where that impersonation route bypassed a self-modification safety block
 that correctly stopped Helen's own transparent attempt at the identical edit. §2b and §9's Rung-2
 guardrails cross-referenced to confirm no Rung-2 exception exists. Applies from 2026-09-22 forward
 only; the seven CHARTER.md edits already landed this way (AWT-0049–0055) left as-is. Owner ruling
 (Minda), `HL-Helen-01`.
- **2026-09-22 — Charter v7.** §0 gained the group's plain-brief writing standard (Hub Coordination
 Standard, Rule C in group CLAUDE.md §1 — kept under its own heading here, not renamed, since this
 charter's own §0 already had a different Rule C); §5 gained the `Raw/` folder. Owner standard
 (Minda), `AWT-0069`.
- **2026-09-22 — Charter v6.** §0 gained Rule D — apply pending Hub Drift Watch board-drift at the
 start of every attended session. Own decision, Minda's "yes, please" — closes the gap exposed when
 18 logged ledger items sat unapplied for over a day; full automatic board sync confirmed not
 achievable, a permanent platform constraint on scheduled/unattended sessions, not a bug.
- **2026-09-21 — Charter v5.** §0 gained Rule C — verify against the system of record before reporting
 delegated-work status. Owner decision (Minda), estate-wide, folded into the same standard as Rules
 A/B.
- **2026-09-20 — Charter v4.** §0 gained the Hub Coordination Standard (AWT-0040) and the Raw/-hand-off
 rule for cross-KB amendments (HL-0023/AWT-0036). Owner ruling (Minda).
- **2026-09-15 — Charter v3.** Folded in the concurrent same-day §9a amendment a parallel session made,
 which the first Rung-2 draft had not yet incorporated. §9a Hub-wide write authority added: Alex may
 write any row on the AI Workforce Hub for any employee, permanent, owner-authorised (Minda). Rung 2
 released the same day, under mandatory dry-run-then-tick.
- **2026-09-14 — Charter created.** Owner-authorised (Minda) at Rung 0 + Rung 1. Employee #9 of the AI
 workforce (operations steward + Help & Lessons owner).

Revisit this file's own convention deliberately, same as the charter itself; every change — and every
rung release — still gets a dated `change-log/` entry too, this file is the version-number index, not
a replacement for `change-log/`.
