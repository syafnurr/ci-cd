#!/bin/bash

cd /home/divistant/research/ci-cd

changes=$(git status --porcelain)

if [ -z "$changes" ]; then
    echo "No changes to commit."
    exit 0
fi

commit_message=""

while IFS= read -r line; do
    if [[ $line == M* || $line == A* ]]; then
        file=$(echo "$line" | awk '{print $2}')
        commit_message="$commit_message $file,"
    fi
done <<< "$changes"

commit_message=${commit_message%,}

git add .
git commit -m "Update $commit_message"

git push origin staging

