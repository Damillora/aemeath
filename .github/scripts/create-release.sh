#!/bin/bash
set -euox pipefail

.github/scripts/generate-version.sh
source <(yq -o=shell include/image-version.yml)

just export
just disk-image
just live-image

.github/scripts/generate-changelog.sh

for f in target/*
do
  rclone copy "$f" aemeath:aemeathos-files/os/updates/
done
for f in disks/*
do
  rclone copy "$f" aemeath:aemeathos-files/os/download/
done
for f in live/*
do
  rclone copy "$f" aemeath:aemeathos-files/os/download/
done
git tag "$image_version"
git push origin tag "$image_version"
gh release create ${image_version} -F CHANGELOG.md
