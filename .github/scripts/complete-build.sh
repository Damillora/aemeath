#!/bin/bash
git checkout include
set -euox pipefail

.github/scripts/buildstream-conf.sh > $HOME/.config/buildstream.conf
.github/scripts/generate-version.sh
source <(yq -o=shell include/image-version.yml)
just clean
just build
bst build components/boot/linux.bst
.github/scripts/buildstream-conf.sh nopush > $HOME/.config/buildstream.conf
just export
just disk-image
just live-image

.github/scripts/generate-changelog.sh

for f in target/*
do
  rclone copy "$f" fina:aemeath/sysupdate/
done
for f in disks/*
do
  rclone copy "$f" fina:aemeath/images/
done
for f in live/*
do
  rclone copy "$f" fina:aemeath/images/
done
git tag "$image_version"
git push origin tag "$image_version"
gh release create ${image_version} -F CHANGELOG.md
