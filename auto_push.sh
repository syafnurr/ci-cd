#!/bin/bash

cd /home/divistant/research/ci-cd

changes=$(git status --porcelain)
file_changes=$(echo "$changes" | grep -E "^[ MADRCU??]{2}")
commit_message=$(echo "$file_changes" | sed -E 's/^.{3}//' | sed -E 's/\..*//' | tr '\n' ',' | sed 's/,$//' | sed 's/,/, /g')

git add .
git commit -m "Update $commit_message"
git push origin staging
