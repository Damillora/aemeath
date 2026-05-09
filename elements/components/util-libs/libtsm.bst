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
  ref: v4.6.0-0-ge1e4d296f0963d1641456f1f778f0ac090429a3e
