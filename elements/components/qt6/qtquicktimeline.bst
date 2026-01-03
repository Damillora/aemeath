kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtquicktimeline-everywhere-src-%{qt6-version}.tar.xz'
  ref: 882ed289b4c229ace324e2545a71d7611c201626bc007d50e514bfd2f6e251b7
