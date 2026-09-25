# Properties KB check — 2026-09-25 (attended, read-only + Hub write)

_Owner-requested (Minda: "Run checks on Fishbone Properties and report back"). Scope: the Fishbone
Properties Ltd KB (Drive `11SREv6Rx4jvTzMtpQbKqzzZkTN4wZgNk`), its routines and its Document Register
rows. Rung 0 (read + propose) for the KB itself; the only write was an owner-directed Hub row update
(§9a). No file in the Properties KB was edited by Alex — its `CHARTER.md` is a governed file and is
never a Rung-2 target (`Charter-Rules.md`)._

## Findings

| # | Area | Finding | Status |
|---|---|---|---|
| 1 | Root | **Two live `CHARTER.md` v1.6** in the KB root: `1R_1xucHOv6tvVjoOTpsUgw-bQWyNAV0T` (06:22:50Z, 18,418 B) and `13NI6cTbxzqWn0LXDHSlDlHd4xTN0GvRC` (06:25:42Z, 18,655 B). Both fold in AWT-0100 (Smartsheet + Drive unattended); same policy, different wording. Cause: two intake routines ran the same prompt five minutes apart (06:10 and 06:15), each doing the fold-in. | Owner ruling: **keep `13NI6…`**. Added to Hub **AWT-0103** (John, High, due 2026-09-26) for John to archive `1R_1x…` by metadata-only move. |
| 2 | Routines | Two intake routines enabled with **identical** prompts: `trig_01Fg3X9Vpx4jmTUnEqjDHkdo` (06:10, "LIVE, attended") and `trig_0141naNrJBoadzztoBPVxyk8` (06:15, formerly "Stage 2 … DRY-RUN"). | Already fixed by 07:18 (06:10 paused, 06:15 renamed "John's intake-pipeline routine"). |
| 3 | Routines | The surviving prompt still said **"LIVE — ATTENDED … wait for the human tick"** despite AWT-0100, and pointed at **archived** copies of `CLAUDE.md` (`15V0OMquhrBe9wWcVy84GXriUyp45Fdnd`) and `document-numbering-and-filing.md` (`1Jq9jdiFUreqRMGiS93bySH3v6tzDCz6S`); cutoff read from `*-daily-automation.md` logs that stopped 2026-09-19; charter "id" was the KB folder id. | **Fixed.** Alex drafted a full replacement; Minda pasted it; verified against the live trigger (identical apart from the omitted `*(End of prompt.)*` line). First run under it (09:43–09:51) caught the duplicate charter via its new step 0a and raised AWT-0103 instead of writing a third version. |
| 4 | Register | Task `T00059` and register row FP0000163 cite **FP0000145** as the Kent Reliance BAF and call FP0000151 a duplicate. FP0000145 is the North Tyneside Council Tax notice (131 Goathland Avenue, registered by Alex 2026-09-21, AX-11); FP0000151 is the only BAF registration. | In **AWT-0103 (b)** for John. |
| 5 | Register | Number collisions FP0000152 / FP0000153 / FP0000160. | Already fixed 2026-09-25 (renumber to FP0000164, void, supersede; owner approval; RA-15). |
| 6 | Raw/ | `URN243422.pdf` (`1YJwnts_J1YXMu5EreUwWhNBR4hf4P0ba`, 2026-09-23, Irina) is named in no change-log; the 09-25 run wrongly called it "already accounted for". FP0000128 (Right to Rent check) still "PENDING — not yet filed" since 2026-09-17. Processed originals staying in `Raw/` is **by design** (the pipeline treats Raw/ as immutable). | URN in **AWT-0103 (c)**. FP0000128 open for the Properties KB owner. |
| 7 | Outputs | Six change-logs stored as Google Docs, not markdown (2026-08-28, 09-09, 09-10, 09-11, 09-14, 09-21 `fp2201-visa-renewal-application`) — the `create_file` auto-conversion gotcha. | Proposal only; the replacement prompt now requires conversion disabled going forward. |
| 8 | Estate | **AX-15's premise is wrong from this session's view:** a group-login session lists all 19 Properties/John routines with run history and can read their prompts (`get_trigger`). | AX-15 corrected in `open-issues.md`. |

## Healthy

Daily change-logs present (intake, compliance scan, ops-board refresh); `risk-register.md` refreshed
2026-09-25; the paused legacy routines are paused, not deleted (rollback retained); every enabled
Properties routine's last run succeeded.
