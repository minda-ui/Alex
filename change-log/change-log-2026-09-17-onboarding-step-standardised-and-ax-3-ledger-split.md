# Change log — 2026-09-17 — Onboarding step made group standard; AX-3 ledger blockage resolved

_Append-only dated session file (Alex's own KB). Third entry for this date — follows
`change-log-2026-09-17-irina-access-diagnosed-conventions-index.md`._

## 1. The conventions-sharing pattern is now a standing onboarding step

**Owner instruction (Minda):** "make it a standard onboarding step and create everything above as task
for me with all instructions."

**Group convention article amended** — `Fishbone Group/Wiki/Process-Housekeeping-and-Session-Discipline.md`,
new section **"Onboarding someone into a company KB (getting them the shared conventions)"**. Archive-then-
recreate, **byte-verified 8,053 B == 8,053 B**, new id `1c4luzaTgwf9Ds7ggdX9AUPRNR_7ymJ8J`; predecessor
(5,366 B) archived to the group `Archive/`. `Last reviewed` moved to 2026-09-17; `[S3]` source and a dated
History line added recording the owner instruction.

The section states the rule in three steps: grant **Viewer** on the five convention articles plus the
joiner's **own** company `Org-*.md` and nothing else; have Alex drop a linked
`Wiki/Group-Conventions-Index.md` into their KB (**links, never copies**); retire any stopgap copy once the
links work. It says plainly that **only the owner can do step 1** (Alex must never change sharing, §2c),
why read-only is the point rather than a precaution, and — from the Collaboration Space finding — that a
**domain-level grant does not reach an address on a different company domain**.

**Authorisation note.** Adding a new rule to a group article is substance, which §2c normally reserves for
an explicit human decision. Minda's instruction is that decision and is recorded as `[S3]` in the article
itself, not just here.

**Flagged, deliberately not changed:** the article's "Open questions" section still says *"Rung 2+ of the
ladder is not yet released"* — untrue since 2026-09-15. That is a factual correction, not the change Minda
authorised, so it was left alone and raised with her instead of being folded in silently.

## 2. Hub tasks created for Minda — and the Hub gained somewhere to put them

`AWT-0013` (High, due 2026-09-19) — the six Viewer shares, with every file id, an explicit **do-not-share**
list (the folder, `00_INDEX.md`, any other `Org-*.md`), the reasoning, what Alex has already done, and what
to tell Alex afterwards.
`AWT-0014` (Medium) — the Collaboration Space domain-grant decision, noting it reaches beyond Irina
(Helen's `AWT-0006` brief points her at that same space).

To create either, **"Minda" had to be added to the `Assigned to` picklist** on Tasks & Requests — it held
only the six AI employees, so an owner-blocked item had nowhere to live and simply stayed invisible.
Several already existed (AX-3, AX-4, both items above). This is a Hub schema change rather than a row
write, so it is called out here rather than folded into §9a's row-level authority; it is additive and
reversible, and Minda can say the word if she would rather the board stayed AI-only.

## 3. `AX-3` — the ledger blockage, resolved (owner: "We need to sort this")

**The problem.** `processed-items-ledger.md` had reached **45,720 B**, past AX-3's ~31KB silent-truncation
ceiling. Item 33 could not be written at all. The reprocessing guard — the thing that stops work being
done twice — had quietly stopped recording.

**What was rejected.** Measuring the exact ceiling empirically (interesting, but the fix does not depend on
the number), and any full-file recreate at 45,720 B (would truncate mid-content, without erroring).

**What was done.** A Drive **move is metadata-only**, so the bytes never touch the upload path:

1. The whole 45,720 B file was **moved** into `Archive/` exactly as it stood — id
   `1ASH4zZ5L0D1lG5bcufI13yA0SvfNd_xT`, holding items **1–32**, unaltered. Archived files keep stable ids,
   so referencing it by id is safe.
2. A small successor `processed-items-ledger.md` was created (**6,767 B**, id
   `1uX1yBTekgb0dalKvlJrNgFP4MOXM4_nq`), continuing the numbering from **item 33** and linking back.
3. Items **33** (the morning's house-rules copy, which the blockage had prevented recording) and **34**
   (the Irina diagnosis) were backfilled, and **35** records the split itself.
4. A **standing ~25KB split rule** is written into the new ledger's own header so this cannot recur.

**`open-issues.md` updated** (archive-then-recreate, byte-verified 7,001 B, new id
`1qDxuzhHfroMCF1MXkI2AfaRM-rXGlMGi`): AX-3 moved `Open` → **`Partially resolved`**.

**AX-3 is deliberately not closed.** A chronological log splits cleanly. A single coherent document does
not: the group `CLAUDE.md` (~58KB) and group `open-issues.md` (~35KB) are documents, not logs, and still
need either a smaller-diff write path or a deliberate content split — still Minda and Eugene's call, still
not Alex's to do unilaterally to someone else's control file.

**Incidental finding worth keeping:** Drive's `update_file` cannot write content at all — title and parent
only. So full-file recreate really is the only edit mechanism available, and splitting really is the only
general answer for an append-only file. That closes off the "maybe there's another write path" hope.

## Scope

No Drive or Smartsheet **sharing** changed (§2c holds). Nothing outward. No secrets, no personal data.
Group-KB writes were Rung 1 plus the owner's explicit decision for the new rule. Nothing was trashed —
both predecessors are in their KB's `Archive/`.
