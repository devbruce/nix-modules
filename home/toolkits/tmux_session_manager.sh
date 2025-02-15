#!/usr/bin/env bash
set -e

FZF_HEADER="tmux_session_manager"
SESSIONS=$(tmux list-sessions -F "#{session_name}" 2>/dev/null || true)

if [[ -z "$SESSIONS" ]]; then
    echo "❗ No tmux sessions found."
    read -rp "  >>> ✨ Enter new session name: " NEW_SESSION
    if [[ -n "$NEW_SESSION" ]]; then
        tmux new-session -s "$NEW_SESSION"
    else
        echo -e "\n🚫 No session name provided. Exiting..."
        exit 1
    fi
    exit 0
fi

# Select session with fzf
SELECTED_SESSION=$(echo "$SESSIONS" | fzf --header="${FZF_HEADER}" --header-first)

if [[ -n "$SELECTED_SESSION" ]]; then
    tmux attach -t "$SELECTED_SESSION"
else
    echo -e"\n🚫 No session selected. Exiting..."
fi
