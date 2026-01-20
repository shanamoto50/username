#!/usr/bin/env bash

USERNAME_Rules='^[a-z][a-z0-9_]{2,11}$'

prompt=""

if [[ -t 0 ]]; then
  prompt="Enter a username (leave blank to quit): "
fi

while true; do
  read -r -p "$prompt" username || break
  if [[ -t 0 && -z "$username" ]]; then
    break
  fi

  if [[ "$username" =~ $USERNAME_Rules ]]; then
    echo "$username - Valid username"
  else
    echo "$username - Invalid username"
  fi
done