#!/usr/bin/env bash

# Update requirements.txt with the latest versions of all packages

PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"

pip list --outdated | gawk -F ' ' 'NR>2{print $1}' | xargs pip install --upgrade
pip freeze > requirements.txt

if git diff --exit-code requirements.txt; then
    echo "No changes to requirements.txt"
else
    git add requirements.txt
    git commit -m "Update requirements.txt"
    git push
fi
