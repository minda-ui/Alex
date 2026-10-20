#!/bin/bash
# UserPromptSubmit hook — when the user's message contains "good night" (a session
# sign-off), inject a reminder to verify today's work is documented before treating
# the session as finished (current-state.md refreshed + a dated change-log/ entry),
# and to check for any open PR or leftover branch still waiting on Minda's merge.
set -uo pipefail

prompt=$(jq -r '.prompt // empty')

if echo "$prompt" | grep -qi "good night"; then
  cat <<'EOF'
{"hookSpecificOutput":{"hookEventName":"UserPromptSubmit","additionalContext":"Reminder (auto-triggered by the phrase \"good night\"): before treating this session as wrapped up, (1) verify current-state.md reflects everything done today and a dated change-log/ entry exists for it — if anything is missing, document it now; and (2) check whether any pull request opened this session is still open and unmerged, or any branch from completed work is still sitting around, and if so ask Minda to merge or clean it up before signing off rather than leaving it for next time."}}
EOF
fi

exit 0
