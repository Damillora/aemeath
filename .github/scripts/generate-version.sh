#!/bin/bash
previous_version=$(git describe --tags $(git rev-list --tags --max-count=1))
previous_date="${previous_version%%.*}"
previous_rev="${previous_version#*.}"
current_date=$(date +%Y%m%d)
current_rev=1
if [[ "$previous_date" == "$current_date" ]]; then
    current_rev=$((previous_rev+1))
fi
echo "Previous Version: ${previous_date}.${previous_rev}"
echo "Current Version: ${current_date}.${current_rev}"
echo "image-version: ${current_date}.${current_rev}" > include/image-version.yml
