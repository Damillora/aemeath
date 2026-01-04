kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst
- components/deps/plasma-wayland-protocols.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtimageformats.bst
- components/qt6/qtmultimedia.bst
- components/kf6/kconfig.bst
- components/kf6/kconfigwidgets.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kglobalaccel.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/kjobwidgets.bst
- components/kf6/knewstuff.bst
- components/kf6/knotifications.bst
- components/kf6/kservice.bst
- components/kf6/ksvg.bst
- components/kf6/kstatusnotifieritem.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/kf6/kxmlgui.bst
- components/kf6/prison.bst
- components/kf6/purpose.bst
- components/plasma/kpipewire.bst
- components/plasma/libplasma.bst
- components/plasma/layer-shell-qt.bst
- components/deps/kirigami-addons.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-welcome-%{plasma-version}.tar.xz'
  ref: 854dea41165603ea2ccceb401a91c2200c7fe2f23d0abc231f94db715a2c2be8
