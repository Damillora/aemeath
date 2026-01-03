kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/kf6/karchive.bst
- components/kf6/kcodecs.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- freedesktop-sdk.bst:components/taglib.bst
- components/kf6-deps/qt6-poppler.bst
- components/kf6-deps/exiv2.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DBUILD_PYTHON_BINDINGS=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/kfilemetadata.git'
  track: 'v%{kf6-version}'
  ref: d4d22ec8ff60a83d60e47d2dd0b066dac613272d
