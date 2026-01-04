kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst
depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kconfig.bst
- components/kf6/kirigami.bst
- components/kf6/krunner.bst
- components/kf6/ksvg.bst
- components/plasma/libplasma.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/milou-%{plasma-version}.tar.xz'
  ref: dd569381ea2825a47ebb3f4b998fd35d753411f45350efb00566df681441b5f7
