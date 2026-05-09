kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-tools/nasm.bst
- components/dev-tools/_private/git-basic.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-root: "source"

config:
  install-commands:
    (>):
    - rm -vf %{install-root}%{libdir}/libx265.a

sources:
- kind: git_repo
  url: bitbucket:multicoreware/x265_git.git
  track: '*.*'
  exclude:
  - "*rc*"
  ref: 4.2-0-ge444744c03978c1fb4e037168967020cf2648427
- kind: patch
  path: patches/libx265/cstdint.patch
