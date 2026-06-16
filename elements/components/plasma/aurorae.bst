kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qttools.bst
- components/kf6/kcmutils.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/kf6/knewstuff.bst
- components/kf6/kpackage.bst
- components/kf6/ksvg.bst
- components/plasma/kdecoration.bst

runtime-depends:
- components/kf6/kirigami.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/plasma/%{plasma-version}/aurorae-%{plasma-version}.tar.xz'
  ref: 538223ebe7521305d29873c278f85e7910eb7810a31d2a69698ede76a5c0da3c
