kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfig.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/deps/libcanberra.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/knotifyconfig.git
  track: 'v%{kf6-version}'
  ref: v6.22.0-0-g8f322639919f565da251b45d338181a8239d9574
