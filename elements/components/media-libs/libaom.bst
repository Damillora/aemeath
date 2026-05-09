kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-lang/perl.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-tools/doxygen.bst
- components/dev-tools/nasm.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  cmake-local: >-
    -D BUILD_SHARED_LIBS=1
    -D ENABLE_DOCS=no

sources:
- kind: git_repo
  url: aom:aom.git
  track: "v*"
  exclude:
  - "*-rc*"
  ref: v3.14.1-0-g03087864cf4bea6abb0d28f95cf7843511413d8f
