#!/usr/bin/env bash


# Rules:
# - Must start with a lowercase letter
# - Can only contain lowercase letters, digits, and underscores
# - Must be 3–12 characters long (inclusive)

USERNAME_REGEX='^[a-z][a-z0-9_]{2,11}$'


if [[ -t 0 ]]; then
  while true; do
    read -r -p "Enter a username (leave blank to quit): " username
    [[ -z "$username" ]] && break

    if [[ "$username" =~ $USERNAME_REGEX ]]; then
      echo "$username - Valid username"
    else
      echo "$username - Invalid username"
    fi
  done

else
  while IFS= read -r username; do
    if [[ "$username" =~ $USERNAME_REGEX ]]; then
      echo "$username - Valid username"
    else
      echo "$username - Invalid username"
    fi
  done
fi