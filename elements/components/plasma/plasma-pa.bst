kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/libpulse.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcmutils.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kdeclarative.bst
- components/kf6/kglobalaccel.bst
- components/kf6/ki18n.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/kstatusnotifieritem.bst
- components/kf6/ksvg.bst
- components/plasma/libplasma.bst
- components/deps/kirigami-addons.bst
- components/deps/libcanberra.bst
- components/deps/qt6-pulseaudio-qt.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-pa-%{plasma-version}.tar.xz'
  ref: cd038aef63da5e37b0f170e63fe182b93c2a362b6756dd26c2d50416052705fa
