#!/bin/zsh
echo "Checking your branch name"
LC_ALL=C

local_branch="$(git rev-parse --abbrev-ref HEAD)"

valid_branch_regex='^(feature|feat|bugfix|improvement|release|prod|prod-premise|hotfix|develop|work|work-develop)(\/.+)?.+'

message="$local_branch is bad branch name. See example: feat/sentry"

#if [[ $local_branch == "flutter_template" ]]
#then
#    exit 0
#fi

if [[ ! $local_branch =~ $valid_branch_regex ]]
then
    echo "$message"
    exit 1
else
    echo "$local_branch is valid"
fi

exit 0