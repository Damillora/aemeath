kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/icu.bst
- components/qt6/qtbase.bst
- components/qt6/qtmultimedia.bst
- components/kf6/kbookmarks.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kconfig.bst
- components/kf6/kconfigwidgets.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kglobalaccel.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/kio.bst
- components/kf6/knewstuff.bst
- components/kf6/knotifications.bst
- components/kf6/knotifyconfig.bst
- components/kf6/kparts.bst
- components/kf6/kpty.bst
- components/kf6/kservice.bst
- components/kf6/ktextwidgets.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/kf6/kxmlgui.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-version}/src/konsole-%{gear-version}.tar.xz'
  ref: d81a696d6a316d0c8fabe3cecd83783f656ee97c70ced89513b3fd16e9d216ac
