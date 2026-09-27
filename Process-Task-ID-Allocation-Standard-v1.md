# Process — Task ID Allocation Standard (v1)

> **Status: ACTIVE, 2026-09-19.** Drafted by Alex (Housekeeping & Operations Steward) after three
> same-day Task ID collisions on the AI Workforce Hub's Tasks & Requests sheet (`AWT-0010`,
> `AWT-0011`, then `AWT-0019`/`AWT-0020` together — see processed-items-ledger.md items 61-68).
> Companion to Process-Request-Pool-Intake-Standard-v1.md, which this does not replace.

## 0. The problem this fixes

The Tasks & Requests sheet's **Task ID** column (`8860839228606340`, column `3261859655976836`) is
a plain text field with no uniqueness enforcement — Smartsheet will happily accept two rows
carrying the same ID. Every ID so far has been typed by whoever created the row (Victoria, Minda,
or a session acting for them), based on eyeballing "what's the next free number." Because several
actors can add rows in the same stretch of time — a session, an hourly read-only routine, and
Minda herself, all touching the sheet independently — the eyeballed number is sometimes already
stale by the time it's saved.

A duplicate Task ID isn't just untidy data: the board dashboard's database keys each task document
by that same ID, and a key-value store cannot hold two documents under one key. So every collision
on this sheet becomes a hard block on the dashboard sync, needing an attended session to manually
renumber one of the rows before anything can mirror again — three times in one day, most recently.

## 1. The guard (already live)

A new column, **"⚠ Duplicate Task ID?"**, sits immediately after Task ID. It is fully automatic —
a formula (`COUNTIF` across the Task ID column), nothing to fill in — and shows a warning the
moment two rows share an ID:

```
=IF(COUNTIF([Task ID]:[Task ID], [Task ID]@row) > 1, "⚠ DUPLICATE — stop, check before saving", "")
```

This does not prevent a collision — Smartsheet has no native way to block a duplicate text value —
but it makes one impossible to miss in the grid, catching the mistake in the UI instead of an hour
later in a Hub Drift Watch block.

## 2. The rule

> **Before adding any new row to Tasks & Requests, read the sheet's current Task ID column live —
> in the same sitting, immediately before saving — and use the highest existing `AWT-####` number
> plus one.** Never reuse a number from memory, a cached list, or an earlier read in a long
> session: by the time you save, someone or something else may already have moved the sheet on.

This applies to Victoria, Minda, and any assistant or routine that creates Hub rows on someone
else's behalf (the pattern behind all three collisions so far was exactly this: a "ROUTINE EDIT"
or delegated row created against a Task ID that looked free a few minutes earlier and no longer
was).

If the **⚠ Duplicate Task ID?** column shows a warning on a row you didn't expect: stop, don't
action the row yet, and either renumber the newer of the two rows to the next free ID yourself, or
raise it on the Help & Lessons sheet if it's unclear which row is the duplicate.

## 3. What this does not fix

This is a process guardrail plus a visual guard, not a structural prevention — Smartsheet still
lets a collision happen if someone ignores the warning column. Two further fixes were scoped
alongside this one and are tracked separately, not yet built:

- **A native Smartsheet auto-number column**, which would make the sheet itself assign the next
  ID on row creation — removing the human/agent guessing step entirely. Not done yet: converting
  the existing populated Task ID column to an auto-number type risks renumbering or reformatting
  the 25 existing IDs, which are referenced by the board dashboard, past ledger entries, and other
  documents by name — this needs a tested, verified conversion before it touches the live sheet.
- **Re-keying the dashboard's board database** by Smartsheet's own row ID instead of the Task ID
  string, so that a future duplicate Task ID mirrors as two separate documents (a data-quality
  note) instead of blocking the whole sync pipeline. A bigger, contained change to the dashboard's
  data model and rendering code, not yet started.

---
*Filed by Alex, 2026-09-19, following Minda's approval to build the guard column and this standard
after the AWT-0019/0020/0021/0022 drift resolution (processed-items-ledger.md item 68).*
