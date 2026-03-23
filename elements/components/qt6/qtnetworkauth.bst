kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtnetworkauth-everywhere-src-%{qt6-version}.tar.xz'
  ref: 828c17d3b4a9e3a3415e597022c98e4e0206b214043e4f1b292e9da620f214d7
