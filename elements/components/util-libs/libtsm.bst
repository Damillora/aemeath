kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/check.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:kmscon/libtsm.git
  track: "v*"
  ref: v4.7.1-0-gef0a1a40c30d164913f413c47de5bbd8383a6daa
