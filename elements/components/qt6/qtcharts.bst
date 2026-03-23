kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtcharts-everywhere-src-%{qt6-version}.tar.xz'
  ref: ac409bd4085772f7f091438cce05213b2a88a6edbab16e3dd7a96122386d94b5
