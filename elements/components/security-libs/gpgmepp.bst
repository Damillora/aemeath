kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/security-libs/gpgme.bst


sources:
- kind: git_repo
  url: github:gpg/gpgmepp.git
  track: gpgmepp-*
  exclude:
  - "*-base"
  ref: gpgmepp-2.2.0-0-g1b3da8425856c558fe31d6d85aa99e1f9ec5bc9f
