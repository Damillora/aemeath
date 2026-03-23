kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtwebsockets-everywhere-src-%{qt6-version}.tar.xz'
  ref: 569f10d1fb35195869576004f5b5ff09735d2f0319e2e8f0dd0f40c7ec31d032
