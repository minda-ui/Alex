# Change Log — 2026-09-21 (evening session): Paper-mail scan processed end-to-end (FP0000145), AWT-0058 concurrency race, Peter/John mailbox-domain correction

_Continues directly on from the same day's Rule C rollout closeout, HL-0033 fix, routine audit, and Peter 6x/day rollout (see `change-log-2026-09-21-rule-c-closeout-hl0033-routine-audit-peter-6x.md`). One piece of work, several corrections along the way — recorded here rather than smoothed over, since the corrections are the useful part._

## What happened

Minda uploaded a scanned paper-mail item into the group KB's `Raw/Paper Mail/` folder and asked for it to be processed per the group's documented incoming-paper-mail-handling process (opens/scans → triage by content → register once → route to the owning company's KB).

**Reading the scan.** The file (`Xerox Scan 20260921 141820.pdf`) is an image-only PDF with no text layer, so the natural-language extraction tool returned empty content. This session's environment had no OCR toolkit at all — `pdftoppm`, `pdftotext`, `tesseract`, `pdfimages`, and Python `fitz`/`pytesseract` were all confirmed absent. Fixed by downloading the raw PDF bytes, saving them locally, and reading the local file directly with the Read tool, whose native multimodal PDF support rendered the scanned content without needing OCR.

**What it was.** A North Tyneside Council Tax Reminder Notice — Payments in Arrears, dated 16-Sep-2026, Account 45932043, addressed to Mr A Prutkovas, for 131 Goathland Avenue, Longbenton, Newcastle upon Tyne. £5.95 outstanding, payable by 23-Sep-2026, rising to £773.00 with legal proceedings threatened "without further notice" if unpaid.

**Triage.** Cross-referenced the Group Document Register and confirmed 131 Goathland Avenue is property **FP2401**, a Fishbone Properties Ltd asset (existing entries `FP0000101`, `FP0000102`, `FP0000103` all concern this property). Registered the notice as **`FP0000145`** (next available FP number, confirmed by querying the register filtered to `Entity = FP`, sorted by Document No., highest prior `FP0000144`). Filed the scan into `FP2401 - 131 Goathland Avenue/Correspondence/`, renamed to the register's naming convention. Routed a §7a hand-off note into Fishbone Properties Ltd's own `Raw/` folder.

## Correction 1 — over-inferred identity

Alex's first pass described the named addressee, Mr A Prutkovas, as "guarantor/director" on the property, reasoning from a surname match against an existing Landbay guarantor, Andrejus Prutkovas, on the same property. Minda corrected this directly: he's a family member (father), not a company officer or guarantor himself. Both the Document Register row and the hand-off note were corrected — the council-tax liability sits with FP2401 regardless of who the letter names, and the point stands as a lesson: a surname match is a lead, not a fact, and shouldn't be written into a system of record as one.

## Correction 2 — a live concurrency race, caught rather than smoothed over

Since Alex has no Gmail connector and never sends mail itself, a Hub row (**`AWT-0058`**, Critical) was raised asking for someone to notify Irina so she could pay it before the deadline. It was first assigned to Peter (who runs the group inbox-triage routine). Minda then suggested the shorter route was to message John instead, since he owns the Fishbone Properties Ltd KB. Alex began reassigning the row to John — but while that edit was in flight, **Peter's own six-times-daily routine had already picked up the row, drafted the notification email to Irina (cc Minda) via Gmail, and marked it Done**, all within the same edit window. Alex's write landed on top of Peter's, requiring a correction: "Assigned to" was set back to Peter to match who had actually done the work, rather than leaving the row crediting an item to John that he never touched. This is exactly the kind of drift Rule C exists to catch, and it was caught immediately by re-reading the live row rather than trusting either agent's own account.

## Correction 3 — a mistaken domain-boundary flag, withdrawn

Having just reassigned the row away from Peter, Alex added a note to the effect that Peter had strayed outside his remit by drafting Properties correspondence, since Properties is John's domain. Minda corrected this too: Peter's Gmail connector authenticates as `ops@fishboneconstruction.co.uk` — the single shared hub mailbox that **all six group companies'** business email, sent and received, routes through. John's connector is a separate mailbox, `ops@fishboneproperties.co.uk`, specific to the Properties KB's own inbox pipeline. This item was scanned paper mail, never an email, so it never touched John's mailbox at all — Peter's hub mailbox was the only correct channel for the outbound notification, and there was no domain crossing to begin with. Alex's mistaken note was withdrawn and the row's own text corrected to record why.

## Correction 4 — the draft was text-only

Minda then caught a genuine gap: the drafted email (id `r2667558814895859494`, thread `1a0c44bef247c34e`) summarised the notice but didn't attach the scan itself. `AWT-0058` was reopened (Status: In Progress) with an explicit instruction for Peter's next run to attach the scan (Drive id `1MtYbD-wz6YvAEEPPZMhUa4vCMpmaexZU`) to the existing draft before the 23-Sep-2026 deadline.

## Where things stand

- `FP0000145` registered and filed correctly; hand-off note in place. Not in question.
- `AWT-0058` **In Progress**, not Done: needs Peter to attach the scan on his next run, then Minda to review and send to Irina before 23-Sep-2026.
- Logged as **`AX-11`** (Open) in this KB's `open-issues.md`, and folded into `current-state.md`'s Last-session/Next-action fields.

## Sources

- Direct Smartsheet reads/writes: Group Document Register (`7352854736144260`), AI Workforce Hub Tasks & Requests (`8860839228606340`, row `AWT-0058`).
- Drive: the scan itself (`1MtYbD-wz6YvAEEPPZMhUa4vCMpmaexZU`), the Document Register entries `FP0000101`–`FP0000103` cross-referenced, the FP2401 property folder structure, John's charter (confirming his `ops@fishboneproperties.co.uk` connector and domain), Peter's own prompt (confirming his `ops@fishboneconstruction.co.uk` hub-mailbox connector).
- `AX-11` (this KB's `open-issues.md`, Open).
