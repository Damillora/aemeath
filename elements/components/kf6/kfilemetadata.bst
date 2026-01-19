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
  track: 'v%{kf6-version}'
  ref: v6.22.0-0-g27e68b2b7237ed855a36a12d8b1e23021ee2d6d6
