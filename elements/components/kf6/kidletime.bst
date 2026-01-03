kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- components/deps/plasma-wayland-protocols.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: 'kde:frameworks/kidletime.git'
  track: 'v%{kf6-version}'
  ref: 42783be439a555c17192be1d693bb374b2b563e8
