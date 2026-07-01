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
  ref: 3.2.0-0-gc85e6b905bf237038faa936dab160ebfc5da0344
