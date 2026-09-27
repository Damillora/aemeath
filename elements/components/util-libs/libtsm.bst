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
  ref: v4.8.0-0-gef2365d0f9f1a370d721a82470d69c3646fe97f0
