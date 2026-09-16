# Change log — 2026-09-16 — First Rung-2 cycle applied (9/9 items ticked and applied)

_Append-only dated session file (Alex's own KB). See `current-state.md` and
`Sweeps/2026-09-16_Rung2-DryRun-Digest_v1.md` for the dry-run digest this session executed._

## Session — 2026-09-16: first attended Rung-2 sweep, all 9 proposed items applied

**Owner instruction (Minda):** *"All of them."* — ticking every item on the dry-run digest
(`Sweeps/2026-09-16_Rung2-DryRun-Digest_v1.md`), presented and re-verified against live Drive state
the same session. Per CHARTER §9 guardrail 2, only ticked items were applied; nothing was touched
before the tick.

**Peter dropped before ticking** — his 09-14 finding was already resolved by his own 09-15 session
(`current-state.md` refreshed, matching change-log entry written). Nothing to apply there.

### Applied (all archive-then-recreate or plain relocation; byte-verified; archive-never-trash)

**1 — Fishbone Properties.** Created `Outputs/change-log-2026-09-16-wiki-digests-and-references-backfill.md`
(id `1kmjYMaNONcgZz2TxVd7tZ_r-mMfHMWb0`, 2107 B) documenting the undocumented 2026-09-14 16:28–19:59
session (Wiki/Digests reorg by info@anthillhomes.co.uk) and the `References/` folder, which by
2026-09-16 held 3 PDFs added 2026-09-10 by irina@fishboneproperties.co.uk with no change-log entry.
Facts recorded only — the files were not moved, deleted, or judged. The provenance/intent question
was raised on the shared desk as **HL-0006** (Category: Data quality, Priority: Low, Owner:
Minda / Properties owner) rather than decided unilaterally.

**2 — Fishbone Holdings.** Moved 4 already-correctly-labeled loose `CLAUDE.md (archived …).md` files
from KB root into `Archive/` (id `1SD8MPJlncH24erWamhYT7uNy89K4HbUU`), metadata-only parent change,
content untouched (fileSize unchanged on each): `1CyMgy2IxW3Fnw35VM-7X-LjU1n5Odem4` (54808 B, session
25), `19Ky-wF8lsFnRhjyv9Fb7f5gl67azVIeo` (52692 B, session 24), `13JQfGuHjxW2bJ2Qodz8tHnZidGQr7wNQ`
(51641 B, HSBC CSV/FH0000014), `1ObAjq7v0rNX7gdlFpqxiny4YKoAsCmXT` (44605 B, session-lineage
reconciliation).

**3/4 — Fishbone Holdings.** The 2026-09-11T19:31 `CLAUDE.md` (id `1WU962ggWjDCACsRGhPalGW_HZiEVXhiS`,
52266 B) — found newly orphaned since the 09-14 sweep (a further 09-15T20:28:37 edit had superseded
it, but it was left live and unrenamed at root) — was renamed to `CLAUDE.md (archived 2026-09-16,
superseded by the 2026-09-15 20:28 version — this 2026-09-11 19:31 edit was an undocumented Group
house-rules restructure, left unarchived until now)` and moved into `Archive/`. Content untouched
(fileSize unchanged); only the current 09-15 20:28 `CLAUDE.md` remains live at root. Holdings has no
dedicated `change-log/` — its history lives in archive filenames, so the label itself is the record.

**5 — Fishbone Waste.** Created `Outputs/change-log-2026-09-16-house-rules-restructure-backfill.md`
(id `1HzVmLoAwtgw2Hkj6uCfeJT30ntaNk5R1`, 1313 B) documenting the 2026-09-11T21:28 `CLAUDE.md`
restructure edit — same shared "Group house-rules" event as Holdings — which had never been logged.

**6 — Fishbone SSAS.** The older of two un-archived root `CLAUDE.md` copies (id
`1fU0-sqx8pgxOU8MYdyVSqubSSAIllgUJ`, 2026-09-11T20:40, 57101 B) was renamed to `CLAUDE.md (archived
2026-09-16, superseded by the 2026-09-12 10:45 version)` and moved into `Archive/` (id
`1BdaI30eW8-d9sZHII3Wc2h4pfvNoqPb2`). Content untouched (fileSize unchanged) — file-level move only,
no member/personal data referenced or touched.

**7 — Fishbone SSAS.** Created `Outputs/change-log-2026-09-16-register-update-backfill.md` (id
`1Z50-y3P9U60blkKa3N6F0H1GHHOAbzjg`, 1140 B) documenting the 2026-09-12T21:19 `kb-registers.md`
update, which had postdated the last change-log entry by ~11 hours and was never logged. File-level
fact only, no member data reproduced.

**8 — Eugene.** `current-state.md` (old id `1G6OweHGBWnHhdZhggCeRH6VTiGQjYB8q`, 10285 B) archived as
`current-state.md (archived 2026-09-16, superseded by the version backfilling the 2026-09-14 20:06
CLAUDE.md §2e edit)` into Eugene's `Archive/` (id `1yw-FuDwvPc6Soi0xXArMCavb-N4eiP9z`); new
`current-state.md` (id `1GXN0zDoKOFt33wY_SdowDViMG_kVw2-_`, 11239 B) created at KB root with a
prepended session note mirroring what Eugene's own `CLAUDE.md` already documents (the §2e Hub/Help &
Lessons addition) — every other field (Role, Beats, Connectors, Routines, Open issues, Next action)
left byte-identical. Noted inline, not resolved: Eugene's Connectors row still lists no Smartsheet
connector, a separate, already-flagged question this backfill does not touch.

**9 — Eugene.** Created `change-log/change-log-2026-09-16-claude-md-edit-backfill.md` (id
`1YL1Icxq5W7xd3F0bWnvb-c3Nyd5Og_rF`, 1426 B) documenting the same 2026-09-14T20:06 `CLAUDE.md` edit —
the largest documentation gap found in the 2026-09-14 estate sweep, now closed.

### Verification

Every upload's returned `fileSize` was compared against the intended content: the four new
change-log files (2107 / 1313 / 1140 / 1426 B) matched exactly on creation; Eugene's new
`current-state.md` (11239 B) is 954 B larger than its predecessor (10285 B), consistent with exactly
the one paragraph inserted and nothing else touched — re-read via `get_file_metadata` to confirm. The
7 metadata-only moves/renames (Holdings ×5, SSAS ×1, Eugene's archived predecessor) show unchanged
`fileSize` on every file, confirming no content was altered by the relocation. One new Help & Lessons
row raised (**HL-0006**, Open) for the one genuinely ambiguous finding — not decided unilaterally.

### Governance / scope

All 9 items were mechanical and reversible (a missing change-log stub, or an archive-then-recreate
relocation); none touched content substance, a judgment call, or personal/member data (SSAS). Nothing
beyond the ticked list was applied — the digest's "excluded" items (Properties' change-log cadence,
risk-register re-scan, external-account confirmation, FP2003/AST content; Waste's 3 unprocessed
`Raw/` items; Holdings' `kb-registers.md`; SSAS's `Wiki/index.md`; Peter's file-placement question)
remain untouched, proposal-only, per CHARTER §9 guardrail 5.
