kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: gitlab:cunity/cunit.git
  track: '*.*.*'
  ref: 3.5.5-0-ge3dbdef12ee4260d103e2a8591ead52e70e1f0a9
