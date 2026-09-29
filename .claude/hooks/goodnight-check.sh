#!/bin/bash
# UserPromptSubmit hook — when the user's message contains "good night" (a session
# sign-off), inject a reminder to verify today's work is documented before treating
# the session as finished (current-state.md refreshed + a dated change-log/ entry).
set -uo pipefail

prompt=$(jq -r '.prompt // empty')

if echo "$prompt" | grep -qi "good night"; then
  cat <<'EOF'
{"hookSpecificOutput":{"hookEventName":"UserPromptSubmit","additionalContext":"Reminder (auto-triggered by the phrase \"good night\"): before treating this session as wrapped up, verify current-state.md reflects everything done today and a dated change-log/ entry exists for it. If anything is missing, document it now."}}
EOF
fi

exit 0
