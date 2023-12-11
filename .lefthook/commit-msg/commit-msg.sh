#!/bin/zsh
echo "Checking your commit message"

commit_regex='^(feat|fix|bugfix|docs|chore|release|improvement)(\(.+\))?: .+'

error_msg="Bad commit message. See example: \"fix: some text\""

if ! grep -iqE "$commit_regex" "$1"; then
    echo "$error_msg" >&2
    exit 1
else 
    echo "Commit message is valid"
fi
