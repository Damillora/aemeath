kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qttools.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- components/qt6/qtbase.bst
- components/kf6/kwindowsystem.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kstatusnotifieritem.git
  track: 'v%{kf6-version}.*'
  exclude:
  - '*rc*'
  ref: v6.22.0-0-g6b5a8512ddb04d219c784abb01b0febc8a21891a
