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
  ref: gpgmepp-2.1.0-0-g6a99d7eef09aedd768356792f38aca2cc03659da
