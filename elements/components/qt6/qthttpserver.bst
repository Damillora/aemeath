kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtwebsockets.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qthttpserver-everywhere-src-%{qt6-version}.tar.xz'
  ref: a26c8d96d34bb4d4e2455e2c5df6e684aafb530927763eab84794ef71944e93b
