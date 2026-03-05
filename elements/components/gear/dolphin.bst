kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtmultimedia.bst
- components/kf6/baloo.bst
- components/kf6/kbookmarks.bst
- components/kf6/kcodecs.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kcmutils.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kfilemetadata.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/kio.bst
- components/kf6/knotifications.bst
- components/kf6/kparts.bst
- components/kf6/knewstuff.bst
- components/kf6/ktextwidgets.bst
- components/kf6/kuserfeedback.bst
- components/kf6/kwindowsystem.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/solid.bst
- components/gear/kio-extras.bst
- components/gear/baloo-widgets.bst

runtime-depends:
- components/gear/ffmpegthumbs.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:release-service/%{gear-version}/src/dolphin-%{gear-version}.tar.xz'
  ref: 9961de7cc076d9d7d598bb7f53afdebcfba20567093231f42ba72e031e089a3b
