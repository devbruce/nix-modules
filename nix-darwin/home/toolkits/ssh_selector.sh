#!/usr/bin/env bash
set -e

FZF_HEADER="ssh_selector(Ref:$HOME/.ssh/config)"
SSH_DIR="$HOME/.ssh"
SSH_CONFIG_PATH="$SSH_DIR/config"
SELECTED_HOST=$(cat $SSH_CONFIG_PATH | awk '$1 == "Host" { print $2 }' | fzf --header=${FZF_HEADER} --header-first)
ssh $SELECTED_HOST
