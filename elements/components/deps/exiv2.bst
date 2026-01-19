kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/python3.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:components/inih.bst

sources:
- kind: git_repo
  url: github:Exiv2/exiv2.git
  track: 'v*'
  ref: v0.28.7-0-gafcb7a8ba84a7de36d2f1ee7689394e078697956
