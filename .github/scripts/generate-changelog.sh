source <(yq -o=shell include/image-version.yml)
source <(yq -o=shell include/versions.yml)

cat > "CHANGELOG.md" << EOF
# Aemeath OS $image_version
## Components
|**Package**            |**Version**               |
|-----------------------|--------------------------|
|**glibc**              | $glibc_track             |
|**Binutils**           | ${binutils_track//_/.}   |
|**GCC**                | $gcc_track               |
|**LLVM**               | $llvm_track              |
|**systemd**            | $systemd_track           |
|**Qt**                 | $qt6_track               |
|**KDE Frameworks**     | $kf6_track               |
|**KDE Plasma**         | $plasma_track            |
|**KDE Gear**           | $gear_track              |

## Downloads
* [Disk Image](https://aemeath-dl.nanao.moe/os/download/aemeath_${image_version}.img.zst)
* [Live Image](https://aemeath-dl.nanao.moe/os/download/aemeath-live_${image_version}.img.zst)

**NOTE: due to space limitations, only recent versions are downloadable**

EOF
git cliff --unreleased --tag "$image_version" --strip header >> CHANGELOG.md