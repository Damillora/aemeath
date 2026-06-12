kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  autogen: ''
  configure: "CC='gcc -std=c99' ./configure --prefix=%{prefix} -G -O3"

sources:
- kind: git_repo
  url: github:gavinhoward/bc.git
  track: "*.*"
  ref: 7.1.0-0-g70c51d95e02d20fc3fc82791dc3f1aa0e9d47f0d

