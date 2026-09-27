# Change log — 2026-09-17 — Irina's access diagnosed; group conventions indexed by link

_Append-only dated session file (Alex's own KB). Second entry for this date — follows
`change-log-2026-09-17-house-rules-copied-to-properties.md`, and supersedes the reasoning behind it._

## Ask

Minda: "Irina is using the Fishbone Properties Ltd project, but she doesn't have access to our
Google Drive where all documenting is stored."

## Diagnosis — the premise was not quite right, and the difference mattered

Checked the live Drive ACLs rather than accepting the framing:

| System | `irina@fishboneproperties.co.uk` |
|---|---|
| Fishbone Properties KB (`11SREv6Rx…`) | **writer** — full access, and has been uploading (the `References/` PDFs are hers) |
| Fishbone Group KB (`1pOHvl8X…`) and every file in its Wiki | **none** |
| Construction, Commercial, Holdings, SSAS KBs | none |
| Collaboration Space (`1YNj5BI…`) | none — see below |

So Irina is not locked out of Drive. She is a writer on her own KB. What she cannot reach is the
**group KB**, which is where every estate-wide convention lives. Minda confirmed her Claude project
reads the Properties KB fine, which pins the gap precisely: it is the group conventions, not the
connector.

**This retro-explains the earlier task this same day.** The request to copy the House Rules into the
Properties KB was a workaround for this permissions gap. The "second home" caveat raised at the time
was the symptom; this is the cause.

**Collaboration Space finding (separate, worth its own attention).** It is shared to the
`fishboneconstruction.co.uk` **domain** as writer. Irina's address is on
`fishboneproperties.co.uk` — a different domain — so the domain grant does not reach her, or any
other Properties-domain account. If Properties staff were assumed to have Collaboration Space access,
that assumption is wrong. Flagged to Minda; not acted on (Alex cannot change sharing).

## Why "share the group KB with Irina" was rejected

The group Wiki mixes two classes of content in one folder:

- **Estate-wide conventions** — House Rules, Document Numbering and Filing, Housekeeping and Session
  Discipline, Post Handling, Wiki Guidelines. No reason Properties cannot have these.
- **Other companies' business** — `Org-Fishbone-SSAS.md` (pension/member territory), plus the
  Construction, Holdings, Commercial, Waste and Amfa profiles, and `00_INDEX.md` which maps the whole
  estate.

A folder-level share hands over all of it. The current containment is clean — every KB other than
Properties is Minda-only — and breaking that to solve a documentation problem is the wrong trade.

## Recommended and partly applied: share six files read-only, index them by link

Proposed to Minda: grant **Viewer** on six group Wiki files to Irina — the five conventions above
plus `Org-Fishbone-Properties-Ltd.md` (her own company's profile). Live originals, so one home per
rule and nothing to drift.

**Alex cannot make those shares** — CHARTER §2c forbids changing Drive or Smartsheet sharing
outright, and that boundary stays. Handed Minda the exact six-file list with ids. Everything either
side of the share is Alex's to do.

**Applied (additive, owner-directed, in the Properties KB):**
`Fishbone Properties/Wiki/Group-Conventions-Index.md`, id `1NiCynFAm_GEY2EDZaFDuVsA-o_OnZt1X`,
3,301 B. Indexes the six by **link, not copy**, states that sharing is Minda's to grant and Alex's to
never touch, explains why the documents are read-only (raise corrections, don't fork them), and
records that the static copy is pending retirement.

Per-action log written into the target KB:
`Fishbone Properties/Outputs/change-log-2026-09-17-group-conventions-index-added.md`
(id `1oOStKBj9Ganm0GVoMzGDK49y_j5HxV6n`, 2,961 B).

## Deliberately not done yet

The static House Rules copy made earlier today (`12CN3Ti_hLqtVRkissUUWLKM04StyEAhx`) is redundant
**once the read-only share on the original is live** — but not before. Archiving it now would leave
Irina with neither the copy nor a working link during the gap. Sequence is: Minda shares → links
confirmed working → Alex archives the copy → one home restored.

## Scope

No sharing changed. Nothing outward. No secrets, no personal data — work addresses and roles only.
No content substance changed anywhere. The group KB was read, not written.
