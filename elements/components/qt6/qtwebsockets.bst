kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtwebsockets-everywhere-src-%{qt6-version}.tar.xz'
  ref: 272ac7e94418e2b13b3384d73ba89dbd6b746d7661b44dce906f8bfc0795bd01
