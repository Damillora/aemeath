kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zlib.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtsvg-everywhere-src-%{qt6-version}.tar.xz'
  ref: dfa8d653be07087d9407ed4a4ebae847f8953e0b7abd829f089803ab652a30e6
