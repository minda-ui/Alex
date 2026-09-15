# Change log — 2026-09-15 — Alex released to Rung 2 (attended, dry-run-then-tick); charter v3; concurrency collision reconciled

_Append-only dated session file (Alex KB). See `current-state.md` and `CHARTER.md`. Follows the same day's §9a / Hub-walkthrough entries; this records the Rung-2 release and the charter reconciliation that came with it._

## Session — 2026-09-15 (evening): Rung 2 released

**Owner instruction (Minda):** *"I think we come to moment, where we need to give Alex Rung 2 level. Please proceed."*

**What Rung 2 is.** The control-release ladder (CHARTER §9): R0 detect & propose · R1 fix this KB + the group KB unattended · **R2 apply the same mechanical, reversible ("janitorial") fixes in sister KBs** · R3 normalise content shape (not authorised) · R4 change substance (never). Rung 2 is now **released**; Rungs 3–4 remain not authorised.

**The mandatory guardrails on Rung 2 (all in CHARTER §9):**
1. **Dry-run-then-tick** — Alex first produces the exact intended fix list (which KB, which file, what change) and Minda approves it before anything touches a sister KB.
2. **Attended only** — Rung-2 sister-KB writes happen only in a session a human is watching. The **unattended sweep routine stays propose-only** (it never self-applies in a sister KB).
3. **Mechanical & reversible only** — missing change-log stubs, dead-link fixes, archive-then-recreate tidy-ups, register/index wiring; never content substance (that is R3/R4).
4. **Archive-never-trash + byte-verify**, same as Rung 1.
5. **Never another employee's KB substance**, and never the §9a Hub axis confused with the KB ladder.
6. Every rung release is recorded here **and in the group KB** (done — see the group `change-log/` entry of the same date).

**Charter taken to v3.** The charter now states Rung 2 as released (§ intro, §1, §9 ladder table row "**2 — Janitorial write into sister KBs … YES (2026-09-15)**", plus the six guardrails) **and** retains §9a (Hub-wide write authority, added the same day). Archive-then-recreate: both prior root `CHARTER.md` variants archived; one live `CHARTER.md` remains (id `1CyMXpJ_id-EDu2eli2jOPfLmAoSHUNTf`, **19961 B byte-verified**). Pushed to the git mirror `minda-ui/Alex` as commit **`18ab599`** (replacing the interim v2 `99652ed`).

**Concurrency collision caught and reconciled (logged as `AX-5`, Resolved).** While this session authored the Rung-2 charter off a slightly older copy, a **parallel session added §9a** to the charter. Two `CHARTER.md` variants briefly co-existed — one with §9a, one with the Rung-2 release (the v2 git push `99652ed`, which had dropped §9a). Caught before finishing by re-reading Alex's own live `current-state.md` (which already showed §9a landed), then merged into the single v3 (both Rung 2 and §9a). **Standing lesson (now Alex's discipline, `AX-5`):** before any archive-then-recreate write to a control file, re-read that file's *current* live id and size immediately beforehand and author the edit onto that live copy — never onto a copy read earlier in the session.

**Control files refreshed (archive-then-recreate, byte-verified):**
- `current-state.md` — Authorised reach now "Rung 0 + Rung 1 + Rung 2"; Last session, Git-mirror, Open-issues and Next-action cells updated. New live id `16Q2-oqXuGiJJVW61UAe5D9gRzWY0HdLd` (5930 B). Predecessor archived.
- `open-issues.md` — `AX-5` added as Resolved. New live id `1VPYo3Skzi8IyiUoTT0oRtczJKV1sZ7d0` (5370 B). Predecessor archived.
- This dated `change-log/` entry written.

**Governance / scope.** All within §6a-equivalent authority for Alex's own KB plus the git mirror; no sister KB was written this session (Rung 2 is released but not yet *exercised* — the first attended sister-KB sweep is a later action, item (2) in `current-state.md` Next action). No live system of record touched.

**Note to Minda (flagged in chat):** Rung 2 was released ~1 day into Rung-1 operation rather than after the "clean fortnight of Rung-1 logs" the group snapshot had pencilled in — an explicit owner waiver of that soft guardrail. The attended-only, dry-run-then-tick model is what keeps it safe: nothing touches a sister KB without Minda seeing the exact list first, and the unattended routine still only proposes.
