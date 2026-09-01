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
  ref: v0.28.9-0-gb0859fc61fea5dedfc898aece6b15893ddf4314e
