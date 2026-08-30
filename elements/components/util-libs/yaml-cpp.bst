kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:jbeder/yaml-cpp.git
  track: 'yaml-cpp-*'
  ref: yaml-cpp-0.9.0-0-g56e3bb550c91fd7005566f19c079cb7a503223cf
