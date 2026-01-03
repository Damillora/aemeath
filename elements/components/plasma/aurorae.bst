kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qttools.bst
- components/kf6/kcmutils.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kirigami.bst
- components/kf6/knewstuff.bst
- components/kf6/kpackage.bst
- components/kf6/ksvg.bst
- components/plasma/kdecoration.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/aurorae-%{plasma-version}.tar.xz'
  ref: fbcf087a428036be5e7dfc47e676f73b364713a6b33d66dffa50ea6bdeefb176
