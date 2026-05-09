kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst


variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS:BOOL=ON

config:
  install-commands:
    (>):
    - find %{install-root} -name '*.o' -delete

sources:
- kind: git_repo
  url: github:PJK/libcbor.git
  track: v*
  ref: v0.14.0-0-g6730c20ab487c0b4dc5fb3fea918937085355bac
