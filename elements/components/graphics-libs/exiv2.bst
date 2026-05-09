kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-lang/python3.bst

depends:
- components/sys-libs/expat.bst
- components/util-archive/brotli.bst
- components/util-libs/inih.bst

sources:
- kind: git_repo
  url: github:Exiv2/exiv2.git
  track: 'v*'
  ref: v0.28.8-0-g2cd987a731236037b6b78cbff897d08685a8ef49
