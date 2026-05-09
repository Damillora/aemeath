kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-tools/nasm.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst


sources:
- kind: git_repo
  url: github:libjpeg-turbo/libjpeg-turbo.git
  track: "*.*"
  exclude:
  - v*alpha*
  - v*beta*
  ref: 3.1.90-0-ge1dbfa7be7b7e54922020051dc77781e92739700
