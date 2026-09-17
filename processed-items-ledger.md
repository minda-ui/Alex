# Processed Items Ledger — Alex (AI Housekeeping & Operations Steward)

_One row per sweep run or Help & Lessons item Alex handles (the reprocessing guard). Status: in-progress | done | partial | blocked._

_**Numbering is continuous across parts.** This file holds **item 33 onward**. Items **1–32** (2026-09-14 → 2026-09-17) are complete and unaltered in `Archive/`, in `processed-items-ledger.md (archived 2026-09-17 2010, superseded by the AX-3 history split — holds items 1–32; the live ledger continues from item 33)`, Drive id `1ASH4zZ5L0D1lG5bcufI13yA0SvfNd_xT`. Archived files keep stable ids, so that reference will not rot._

## Why this file was split, and the rule that keeps it working

On 2026-09-17 this ledger reached **45,720 B** and could no longer be written to at all. `AX-3` records
that a Drive upload silently truncates somewhere around ~31KB — no error, just a file cut off mid-word —
and a full-file archive-then-recreate is the only edit mechanism available. Past that size the
reprocessing guard becomes un-appendable: the very file that stops work being repeated cannot record that
work was done.

The split cost nothing and lost nothing, because **a Drive move is metadata-only**. The 45,720 bytes were
never re-uploaded; the original file object was renamed and moved into `Archive/` exactly as it stood, and
this small successor was created beside it. No content passed through the truncating path.

**The standing rule, from now on:** when this file passes **~25KB**, close it the same way — move it to
`Archive/` under its dated split name, and start a fresh live `processed-items-ledger.md` that continues
the item numbering and links back to the previous part. Never let it approach the ceiling again, and never
attempt a full-file recreate of anything already past it: archive it by moving, and shrink the successor.

The same shape works for any append-only file that outgrows the ceiling. It does **not** solve `AX-3` for a
large file that cannot be split — the group `CLAUDE.md` (~58KB) is one coherent document, not a log, so it
still needs either a smaller-diff write path or a deliberate content split. That part of `AX-3` stays open
and stays a decision for Minda and Eugene.

| # | Date | Item | Type | Status | Notes |
|---|---|---|---|---|---|
| 33 | 2026-09-17 | Group house rules copied into the Fishbone Properties KB (owner-instructed) | Owner-directed | done | Minda asked for a copy of `Process-Fishbone-Systems-House-Rules.md` in the Properties KB. Dry-run presented first: source confirmed live (group Wiki, v1.3, 26,844 B); destination confirmed to hold no existing copy anywhere (root, `Wiki/`, `Wiki/Processes/`), so an add rather than an overwrite. Two caveats raised before applying — it is **additive, not a Rung-2 janitorial fix** (recorded as an explicit owner decision rather than stretched to fit Rung 2), and it creates a **second home** for a rule whose single source is the group Wiki. Minda ticked and chose `Wiki/Processes/`. Applied by **native Drive copy** rather than read-and-re-upload, specifically to stay clear of `AX-3`'s ceiling — a native copy cannot truncate. Byte-verified 26,844 B == 26,844 B, new id `12CN3Ti_hLqtVRkissUUWLKM04StyEAhx`. Per-action log written into the target KB (`Outputs/change-log-2026-09-17-group-house-rules-copied-in.md`). **This row could not be written at the time** — the ledger was already past the AX-3 ceiling; backfilled here as part of the split (item 35). See `change-log/change-log-2026-09-17-house-rules-copied-to-properties.md`. |
| 34 | 2026-09-17 | Irina's access diagnosed; conventions indexed by link; onboarding step made group standard | Owner-directed / Governance | done | Minda: Irina works in the Properties project but "doesn't have access to our Google Drive." Checked the live ACLs rather than accepting the framing — **Irina is already a writer on the Properties KB** and her Claude project reads it fine; what she cannot open is the **group KB**, which is Minda-only and holds every convention. This retro-explains item 33: that copy was a workaround for a permissions gap. Rejected a folder-level share (the group Wiki also holds `Org-Fishbone-SSAS.md` and every sister company's profile; containment elsewhere is clean and worth keeping). Recommended and applied instead: six named convention files to be shared **read-only**, indexed **by link, not copy**, in `Fishbone Properties/Wiki/Group-Conventions-Index.md` (id `1NiCynFAm_GEY2EDZaFDuVsA-o_OnZt1X`, 3,301 B). Alex cannot make the shares — CHARTER §2c forbids changing Drive/Smartsheet sharing — so they went to Minda as **`AWT-0013`** (High, due 2026-09-19) with the exact six ids and an explicit do-not-share list. Also found the **Collaboration Space is shared to the `fishboneconstruction.co.uk` domain only**, so no `@fishboneproperties.co.uk` account can reach it — raised as **`AWT-0014`** (Medium). Per Minda's instruction, made the pattern a **standing onboarding step** in the group convention article `Process-Housekeeping-and-Session-Discipline.md` (archive-then-recreate, byte-verified 8,053 B, new id `1c4luzaTgwf9Ds7ggdX9AUPRNR_7ymJ8J`). Added **Minda** to the Hub's `Assigned to` picklist so owner-blocked items are trackable at all — they previously had nowhere to live. See `change-log/change-log-2026-09-17-irina-access-diagnosed-conventions-index.md`. |
| 35 | 2026-09-17 | `AX-3` ledger blockage resolved: this ledger split into parts (items 1–32 archived intact) | Setup / Governance | done | Minda: "We need to sort this." The live ledger had reached 45,720 B — past `AX-3`'s ~31KB ceiling — so item 33's row could not be written at all, and the reprocessing guard had silently stopped guarding. Fixed structurally rather than by testing the ceiling: the whole 45,720 B file was **moved** into `Archive/` (metadata-only — nothing re-uploaded, nothing truncated, id `1ASH4zZ5L0D1lG5bcufI13yA0SvfNd_xT`, bytes untouched) and this small successor created in its place, continuing the numbering from 33 and linking back. Backfilled items 33 and 34, which the blockage had prevented. Added the standing ~25KB split rule above so it cannot recur. **`AX-3` is not closed:** a chronological log splits cleanly, but a single coherent document past the ceiling (the group `CLAUDE.md`, ~58KB) still cannot be safely rewritten — that half remains open for Minda/Eugene. Also confirmed in passing that Drive's `update_file` cannot write content at all (title and parent only), so full-file recreate really is the only edit mechanism available, and splitting really is the only general answer for append-only files. |

_(Thirty-five items processed to date — items 1–32 in the archived Part 1, items 33 onward here.)_
