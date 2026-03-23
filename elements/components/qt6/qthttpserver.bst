kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtwebsockets.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qthttpserver-everywhere-src-%{qt6-version}.tar.xz'
  ref: 2b9095a327ede86be111dc4978fe848b3fbf48f23d99138fc6c3688e2a7d989b
