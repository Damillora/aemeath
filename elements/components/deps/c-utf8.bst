kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/deps/c-stdaux.bst

sources:
- kind: git_repo
  url: github:c-util/c-utf8.git
  track: 'v*'
  ref: v1.1.0-0-gaab553d293bbffa42f34dc966be61313d9433c2f