kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/sys-devel/bison.bst
- components/sys-devel/flex.bst
- components/dev-lang/python3.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:doxygen/doxygen.git
  track: Release_*
  ref: Release_1_17_0-0-g65a43c0aba45cc23b3ca11b6b5334d4eea931726
  version-guess-pattern: '(\d+)_(\d+)_(\d+)'
