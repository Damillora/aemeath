kind: autotools


build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  build-dir: build


sources:
- kind: git_repo
  url: github:akheron/jansson.git
  track: "v*"
  ref: v2.15.0-0-g4a9a6db73d5dc553164992e87426502ab2d54512
