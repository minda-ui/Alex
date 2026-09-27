# Change log — 2026-09-18 — AX-3 and AX-4 closed; quiet-run rule added; concurrent session found

_Append-only dated session file (Alex's own KB). See `current-state.md`._

## Ask

Minda, 2026-09-17: "Let's resolve AX3 and AX4 today." Then this morning: work through the board sync, the
Drift Watch's repeat-logging, and the paperwork.

## 1. `AX-3` — Resolved. The ceiling was re-tested and is gone

Yesterday's plan was to restructure the group `CLAUDE.md` (57,925 B) and `open-issues.md` (35,143 B) so they
fell under the ~31KB upload ceiling. **That was not done, because the premise turned out to be false.**

Before touching the estate's most important file, the limit was re-tested: a 40-line filler file was uploaded
to this KB's `Archive/` and **60,185 B stored**, then **downloaded and verified byte-for-byte** — both markers
present, all 40 lines, zero U+FFFD. The evidence file is kept (id `1T1aRdYBl86aHau5uIzF7eqF5quP4aB_E`).

60,185 B exceeds both stuck files, so **no split, appendix or content restructure is needed anywhere**.
Whatever changed in the tooling between 2026-09-14 and 2026-09-18, the truncation is gone.

**The lesson is the valuable part.** A tooling limitation recorded three days ago is a hypothesis, not a fact.
Acting on it unchecked would have carved up the group `CLAUDE.md` to solve a problem that had already fixed
itself — irreversible restructuring, for nothing. The same re-test discipline that catches a stale control
file catches a stale constraint.

## 2. `AX-4` — Resolved. Already fixed at source, so the tracking row was moot

AX-4's only outstanding action was a proposed group `OI-<n>` row asking six sister KBs to document their
undocumented `CLAUDE.md` edits. Before writing it, the premise was checked — and the **2026-09-16 first
attended Rung-2 cycle had already done the documenting** in all six: Properties, Waste and SSAS backfills,
Holdings' five stray `CLAUDE.md` copies archived, Eugene's §2e backfill plus a refreshed `current-state.md`,
and Peter's closed by his own session before the cycle ran.

**Spot-verified live on Drive**, not taken on trust from the ledger:
`Eugene/change-log/change-log-2026-09-16-claude-md-edit-backfill.md` (1,426 B) and
`Fishbone Waste/Outputs/change-log-2026-09-16-house-rules-restructure-backfill.md` (1,313 B) — the latter
documenting the exact 2026-09-11 Group house-rules restructure AX-4 named.

Opening a group issue asking people to do work already done would be noise. **Nothing was written to the
group `open-issues.md`.** The right close for a tracking row is the work being done, not the row being filed.

`open-issues.md` updated (archive-then-recreate, byte-verified **9,270 B**, new id
`1juZtv4sKwPBp8t6_hnJ8qyHdZlzjXcy5`): both moved to Resolved. **No `AX-<n>` is now open.**

## 3. The Drift Watch's repeat-logging

The hourly Hub Drift Watch writes a full ~2KB ledger row every run even when nothing has changed — items 38,
39 and 40 were near-verbatim repeats. At ~2KB/hour this file crosses its own 25KB split threshold inside a
day: churn, not history.

A **quiet-run rule** is now in the ledger header: a run that finds no change since the previous run's row
writes a single line naming the date, run type and the item it is unchanged from. Full detail stays in the
row that first found the drift.

**A correction worth recording.** The first version of that paragraph claimed past rows are never rewritten —
while the same write had just condensed rows 38–40. That is precisely the rule-contradicting-practice problem
flagged in the group convention article the day before, committed here within minutes of writing the rule.
Corrected in a second pass: the paragraph now states plainly that it was applied retrospectively once, and
each condensed row points to the archived predecessor (`1Qjeo2SqIeCuIavpL3J2GsphGnhei2h__`) holding its full
original wording. Nothing was lost.

**The routine itself still needs an owner change** — Alex cannot edit a routine it did not create, and the
API returns no prompt text for owner-created routines, so the current prompt cannot even be inspected from
here. Prompt wording handed to Minda in chat.

## 4. A concurrent Alex session is running

Found mid-session, and worth flagging as an operational matter rather than a curiosity:

- The board's `AWT-0013`/`AWT-0014` docs appeared at **05:43:36**, seconds before this session tried to write
  them — so the board sync was already done, and done more completely (board db **and** the page SEED, with a
  republish to version 26).
- The live `processed-items-ledger.md` **changed file id twice in ten minutes** under this session; one
  metadata check returned "entity not found" for an id read minutes earlier.
- That session's work (ledger items **41** — the Group Asset & Label Register — and **42** — the Drift Watch
  catch-up) is intact and credited in the ledger; this session rewrote the file around those rows rather than
  over them.

**No work was lost in either direction**, because the AX-5 discipline held: re-read the live id and size
immediately before every archive-then-recreate. This is the third distinct occasion that discipline has paid
for itself. It is also the strongest argument yet for it, since here the collisions were minutes apart rather
than hours.

## Scope

No Drive or Smartsheet **sharing** changed (§2c holds). Nothing outward. No secrets, no personal data. No
content substance changed in any sister KB. The group KB was read, not written. Nothing trashed — every
predecessor is in its KB's `Archive/`.

**Carried forward:** `AWT-0013` (the six Viewer shares for Irina, due 2026-09-19) and `AWT-0014` (the
Collaboration Space domain decision) remain Minda's. Once `AWT-0013` is done, the static house-rules copy in
Properties (`12CN3Ti_hLqtVRkissUUWLKM04StyEAhx`) gets archived, restoring one home per rule.
