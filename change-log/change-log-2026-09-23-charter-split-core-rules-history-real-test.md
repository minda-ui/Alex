# Change log — 2026-09-23 — CHARTER.md split into core/rules/history (real test)

_Append-only dated session file. See `current-state.md` and `CHARTER.md` §7._

## Session — 2026-09-23

Minda asked why implementing a new governance rule always means rewriting the whole file, and
whether there's a cheaper, more reliable way — pointing out it costs real resources and that a
better answer would make the estate more stable, reliable and productive. Root cause: Google Drive
has no patch/append API for text files, so every edit, however small, means the entire file has to
be reproduced as tokens to rebuild the upload. On a large file this is both expensive and, as this
KB found twice in one week, a real corruption risk (the base64-relay corruption on `CHARTER.md` and
the group's `CLAUDE.md`).

Recommended splitting each governed file into three: a **core** (identity/role/authority — rarely
changes), a **rules** file (the part that changes almost every session lately — three rule changes
in one week alone), and a **history** file (append-only, only ever grows, so a rule change never has
to touch it either). Minda said "let's go and do a real test."

Applied to Alex's own KB first (Rung 1, no need to ask):

- Old `CHARTER.md` v8 (27,966 B, monolithic) archived intact.
- New `CHARTER.md` v9 (20,616 B) — §1–§9 only (role, authority, folders, routines, rung ladder). §0
 replaced with a one-line pointer to `Charter-Rules.md`. Footer trimmed to a pointer to
 `Charter-History.md`.
- `Charter-Rules.md` (7,587 B, new file) — §0 in full: the Definition of Done, the Hub Coordination
 Standard (Rules A–D), the plain-brief writing standard, and the Raw/-only cross-KB amendment
 channel. States explicitly that it carries the same governance as `CHARTER.md` itself (Raw/-only,
 no Rung-2 exception) so the split doesn't quietly open a loophole.
- `Charter-History.md` (3,862 B, new file) — the version-footer paragraph reformatted as a clean
 dated bulleted list (an improvement in its own right — the old footer was one run-on paragraph).

All three byte-verified on upload. Content check: every sentence in the archived v8 is present in
either the new `CHARTER.md` core or `Charter-Rules.md` — nothing dropped in the split.

**Result:** an ordinary rule change (the kind this KB has done three times in the past week) now
only touches `Charter-Rules.md` (~7.5KB) plus one appended line in `Charter-History.md` — not the
whole ~28KB file. Roughly a 75% cut in what has to be reproduced for the common case, and a smaller
corruption surface on each edit.

**Not fixed by this, and out of Alex's own hands:** a genuine append/patch-capable Drive-write tool,
which is the actual root-cause fix. Already logged three times on the Hub (`HL-0030`, `HL-0034`,
`HL-0040`) as a question for Eugene/the platform, not something a file-structure change replaces.

**Pending / carried forward:** propose the identical split for the group KB's `CLAUDE.md` (also
large, also edited twice this week) — Minda to confirm first since it's not this KB, though Rung 1
covers it. Propose the same split for the seven sister-employee charters as a Rung-2 dry-run digest
(Peter/Eugene/Helen/Darius/Rachel/John/Victoria), Minda to tick which to do. Recheck `AWT-0058`
(untouched since 2026-09-21). Git-mirror catch-up, now three files further behind than before this
session (non-urgent).
