kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtshadertools.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kconfig.bst
- components/kf6/kglobalaccel.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kwidgetsaddons.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kdeclarative.git
  track: 'v%{kf6-version}'
  ref: v6.22.0-0-g96312da6ab468199b61c8ceac69cc0259d845610
