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
  ref: v4.7.0-0-gfacadce47638f52dfc8939b463e98f0962863aad
