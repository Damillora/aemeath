kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-archive/xz.bst

variables:
  meson-local: >-
    -D manpages=false

sources:
- kind: git_repo
  url: kernel:utils/kernel/kmod/kmod.git
  track: v*
  ref: v34.2-0-g13330c958deef15c227a9c83d8ba72106152fd7f
