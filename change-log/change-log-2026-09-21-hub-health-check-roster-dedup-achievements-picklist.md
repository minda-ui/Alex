# Change Log — 2026-09-21 (evening, continued): Hub health check, Roster de-dup, Achievements picklist fix, Irina delivery-confirmation gap, AWT-0058 tooling-limit update

_Continues directly from `change-log-2026-09-21-paper-mail-fp0000145-awt0058-concurrency.md` earlier the same evening. That entry closed with the `HL-0005` ceiling-retest fix delivered to Rachel; this one covers everything since._

## What happened

Minda asked Alex to check the Fishbone Workforce Hub end to end ("is everything working fine? nothing missed in a list?"). No literal Hub dashboard (Sight) exists — the Hub is four Smartsheet sheets: Roster, Tasks & Requests, Help & Lessons, Achievements. All four were read live.

**Findings reported:** no Task-ID collisions; Tasks & Requests and Help & Lessons both at healthy, expected levels; one live risk flagged directly — `AWT-0058` (Critical, due 23-Sep) still In Progress, Peter having added a Drive link to the draft rather than a literal attachment after hitting a genuine size limit (see below).

## Correction/finding 1 — Roster duplicate row for John

Minda asked directly whether Irina, John and Darius were on the Roster. Re-checking surfaced two rows for John — one still `Status=Building` ("routines: none migrated yet"), one `Status=Active` ("routines: being handed to John"). Re-confirmed both live before acting; the Building row (id `5220517341169540`) was strictly superseded by the Active one. Removed via Smartsheet `delete_rows` on Minda's go-ahead — permanent, with no Drive-style archive-never-trash equivalent for a sheet row, so the full deleted content was quoted back to Minda in chat for the record. Roster is now 10 rows, one per person. Logged as **`AX-12`** (Resolved).

## Correction/finding 2 — Achievements' Employee picklist gap (root cause of a "missing achievements" report)

Minda separately reported she'd checked Achievements and couldn't find Irina's or John's entries from today. Direct queries against the sheet, bypassing any UI filter, found all four rows fully intact and correctly attributed — nothing was lost. Root cause: the `Employee` column is a PICKLIST configured with only 4 of the (then) 10 Roster names (Peter/Eugene/Helen/Alex), with `validation: false` — Smartsheet's API silently accepted "Irina"/"John" into cells outside the dropdown's list, which a filtered/grouped UI view could drop. Fixed at Minda's request: widened the column's options to all 10 current names plus Minda herself ("don't forget me too"). No existing cell values touched. Logged as **`AX-13`** (Resolved).

## Correction/finding 3 — Irina's compliance-packet delivery unconfirmed for 7 of 10

Minda asked to check whether Irina's tenant compliance-packet sends (an Achievement row, 10 properties in one afternoon) actually reached tenants. Only 3 of 10 have an explicit tenant-reply confirmation (Luiza/FP2301, Yurii/FP1902, Stephen/FP1602); the other 7 have no confirmation or bounce-check either way. Alex has no Gmail connector so could not check the mailbox directly; offered to raise a task for John (who has read access to it) to check for bounces without contacting any tenant. Minda declined action for now. Logged as **`AX-14`** (Open/Watch) rather than closed, since the underlying gap is real, just not urgent.

## Correction/finding 4 — `AWT-0058` tooling-limit update

Since the last close-out, Peter's next scheduled run attempted the literal ask on `AWT-0058` — attaching the scanned notice to the Irina draft — but correctly declined to force an unsafe workaround: the scan's base64 encoding (661,801 characters) was far too large to safely retype as a single tool-call parameter, a second and larger recurrence of the `HL-0014` binary-relay gap. Instead added a direct Drive link to the scan into the draft body and left the row **In Progress**, flagging it as Minda's call whether the link suffices or someone should attach the file by hand. Folded into `AX-11`'s existing entry (not a new issue) and flagged directly to Minda given the 23-Sep-2026 deadline is now imminent.

## Where things stand

- Roster: 10 rows, no duplicates. **`AX-12` Resolved.**
- Achievements: `Employee` picklist now lists all 10 current names + Minda. **`AX-13` Resolved.**
- Irina's tenant-email delivery: 3/10 confirmed, 7/10 unconfirmed, Minda declined action. **`AX-14` Open/Watch.**
- `AWT-0058`: still In Progress, deadline imminent — Minda to review/send. **`AX-11` still Open, updated.**
- Own control files (`current-state.md`, `open-issues.md`) refreshed to record all of the above, archive-then-recreate, byte-verified.

## Sources

- Direct Smartsheet reads/writes: Roster (`8154403007760260`), Tasks & Requests (`8860839228606340`, row `AWT-0058`), Help & Lessons (`7780569054316420`), Achievements (`4569101748012932`).
- `AX-11` (updated), `AX-12`, `AX-13`, `AX-14` — this KB's `open-issues.md`.
