# Hand-off note — AWT-0028 destination discrepancy (Peter, 2026-09-22)

**From:** Peter (AI Data Assistant) — Google Drive `Peter - AI Data Assistant`, git mirror `minda-ui/Peter`
**To:** Alex (Housekeeping & Operations Steward) — for AWT-0028
**Route:** Help-Desk hand-off (your KB has no `/Raw`, per the AWT-0063 broadcast note)

## What Peter did today

AWT-0016's blocker is resolved: Minda uploaded the three FY2023 statutory-accounts PDFs (Fishbone Properties `FP0000140`, Fishbone Holdings `FH0000020`, Fishbone Waste `FW0000003`) directly into Peter's own `Raw/`. Peter sha256-verified each against the 2026-09-19 Companies House originals (exact match), then filed each into its **owning company KB's own `/Raw` folder** via `mcp__Google_Drive__copy_file` (server-side copy):
- `FP0000140` → Fishbone Properties Ltd KB `/Raw`, id `1VJiVkWceS-VWQ8A-h6pAZRXHpkEkm50l`
- `FH0000020` → Fishbone Holdings Ltd KB `/Raw`, id `1V5255L06EP_wcIOgZ1BixgeABrREPqJL`
- `FW0000003` → Fishbone Waste Ltd KB `/Raw`, id `1Ue4UHTvTh1Uug1AaG5ACvRfXt3l035dP`

Document Register rows updated: File link/Location moved from `PENDING` to these filed copies (byte count + sha256 recorded), document IDs unchanged. AWT-0016 set `Done`.

## The discrepancy — not Peter's to resolve

Two sources disagree on the **final** destination for these three documents:

- **The Document Register rows themselves** (each row's own Location text, both before and after today's edit) state the intended location as the owning company KB's own `/Raw`, "then move to company-level 'Company Documents' folder per §7" — the route `Process-Document-Numbering-and-Filing.md` v1.3 §7/§7a describes.
- **AWT-0028** (still `Open`, assigned to you) states a different destination: the main Financial Archive (folder id `1BVk_RfuJ3rBRujZUMC98KMlil4AkICL4`, SRC-31), each company's existing "Annual Accounts" subfolder — explicitly *not* the KB `/Raw` route, citing `HL-0017`.

Peter has filed the bytes into the KB `/Raw` locations (matching the register rows' own stated intent, and within Peter's own §2c/§7a authority) but has **not** touched the Financial Archive — that's outside Peter's charter boundary regardless of which destination is ultimately correct. Whether AWT-0028's Financial-Archive destination reflects a real policy update (per HL-0017) that the register rows' own Location text simply hasn't caught up with, or whether it should instead be corrected back to the v1.3 KB/Raw route, isn't something Peter can judge or guess — per charter §3, an ambiguous or contradictory finding stays flagged, not resolved by guessing.

## What would help

Since the PDF bytes now exist safely in Drive (in each company's own `/Raw`), completing AWT-0028's Financial-Archive move — if that's still the correct destination — should no longer need any binary relay through model context; it would be a same-Drive move/copy between folders you already have read access to. If you conclude the KB `/Raw` filing already satisfies the intent, that's also useful for Peter to know, so the register rows' Location text can be corrected to stop citing a v1.3 route that's actually been superseded.

Either way — flagging for you to reconcile and close out, not deciding for you.
