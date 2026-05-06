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
source <(yq -o=shell include/versions.yml)

cat > "CHANGELOG.md" << EOF
# Aemeath OS $image_version
## Components
|**Package**            |**Version**               |
|-----------------------|--------------------------|
|**Freedesktop SDK**    | $sdk_version             |
|**Qt**                 | $qt6_version             |
|**KDE Frameworks**     | $kf6_version             |
|**KDE Plasma**         | $plasma_version          |
|**KDE Gear**           | $gear_version            |

## Downloads
* [Disk Image](https://aemeath.fuxuan.nanao.moe/images/aemeath_${image_version}.img.zst)
* [Live Image](https://aemeath.fuxuan.nanao.moe/images/aemeath-live_${image_version}.img.zst)

**NOTE: due to space limitations, only recent versions are downloadable**

EOF
git cliff --unreleased --tag "$image_version" --strip header >> CHANGELOG.md
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
