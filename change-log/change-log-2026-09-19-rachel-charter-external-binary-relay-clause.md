# Change log — 2026-09-19 — Rachel's CHARTER.md: external-binary-document relay clause added

_Append-only dated session file (Fishbone Group KB `change-log/`). Cross-employee edit: performed by Alex, on
Rachel's own KB, owner-authorised (Minda)._

## What changed

`Rachel - AI Finance Assistant/CHARTER.md` — added one new bullet to §3 ("Reach — what Rachel may do, and what
needs a human"), in the "May, unattended" list, immediately after the existing "Obtain a missing document from
an external register — via Peter, not herself" bullet:

> **External binary documents.** If your routine or session fetches an external binary document (e.g. a PDF
> from an API or web source) too large to safely relay through model context as base64, do not attempt the
> relay yourself. Register it using its permanent source URL and a checksum, leave a short covering note, and
> flag it to Alex — the estate's standing fetch-and-relay owner (HL-0014 / HL-0018).

Wording is verbatim per instruction — the same clause is being added identically across five employees' charters
today, for consistency. Nothing else in the charter was reworded or restructured.

**Archive-then-recreate:** predecessor (Drive-reported 21,507 B) archived into Rachel's own `Archive/` folder as
`CHARTER.md (archived 2026-09-19, superseded by adding the estate-wide external-binary-document-relay-to-Alex
rule, HL-0014/HL-0018)`. New copy created at the KB root under the plain title `CHARTER.md`, id
`1GsTHH538H-WCYiIP6Tmp3jT_DA7HCeDf`, **byte-verified 21,918 B == 21,918 B** (local reconstruction vs the new
file's Drive metadata) before this was considered done.

**Verified before writing:** re-fetched the live file fresh rather than trusting any cached copy; confirmed
exactly one live copy of `CHARTER.md` existed at Rachel's KB root before touching anything, per the `HL-0020`
concurrency discipline this same charter's own §5 states (recency is not authority). Saved the original content
to a local scratch file first, inserted the one clause, and diffed the result against an independently
re-typed copy of the same content before upload, to confirm only the intended six lines were added and nothing
else changed.

## Why this mattered

Rachel's §3 already routes one category of external-fetch problem to Alex (Companies House documents, via
Peter), but had no general rule for the separate, purely technical problem of an external binary document too
large to relay safely through model context. Without a written rule this gap would recur ad hoc in every
session that hit it; the fix makes the existing HL-0014/HL-0018 practice a standing, written part of Rachel's
own governing document rather than tribal knowledge.

## Scope

Rachel's KB only. No sharing changed. Nothing else touched. **One wrong turn, recorded rather than hidden:**
this session first created a stray placeholder file titled `CHARTER.md` at the KB root by mistake (empty
17-byte content, id `1SZm3Hdfuk-D88hekXUONBBlWKAjMGhjK`), which would have been a second live copy of the same
basename — caught immediately and trashed before any real content ever existed at that id, and before the
correct file was created.
