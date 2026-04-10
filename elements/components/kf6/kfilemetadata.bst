kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- freedesktop-sdk.bst:components/taglib.bst
- components/qt6/qtbase.bst
- components/kf6/karchive.bst
- components/kf6/kcodecs.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/deps/qt6-poppler.bst
- components/deps/exiv2.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kfilemetadata.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.25.0-0-gfa90403368627dbf00fd627d62df724d12ec6a7e
