kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtmultimedia.bst
- components/kde-kf6/baloo.bst
- components/kde-kf6/kbookmarks.bst
- components/kde-kf6/kcodecs.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kcompletion.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kfilemetadata.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kparts.bst
- components/kde-kf6/knewstuff.bst
- components/kde-kf6/ktextwidgets.bst
- components/kde-kf6/kuserfeedback.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/solid.bst
- components/kde-gear/kio-extras.bst
- components/kde-gear/baloo-widgets.bst

runtime-depends:
- components/kde-gear/ffmpegthumbs.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/dolphin-%{gear-track}.tar.xz'
  ref: d18579587f841ca5a571c3614bda0beed6e53bf5ded4d456009e187cbb9d0b44
