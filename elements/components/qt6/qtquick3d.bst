kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zlib.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtshadertools.bst
- components/qt6/qtquicktimeline.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtquick3d-everywhere-src-%{qt6-version}.tar.xz'
  ref: c76b85de3f8aa2a4bee64987acfef560675c1b378b92076c7c6264613e5b456f
