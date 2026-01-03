kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtshadertools.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qt5compat-everywhere-src-%{qt6-version}.tar.xz'
  ref: 72396d160a153dee01b41cf0cae9ad46204cf613adb791b3ee85a7efeadffe24
