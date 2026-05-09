kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/util-libs/icu.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtmultimedia.bst
- components/kde-kf6/kbookmarks.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kconfigwidgets.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kglobalaccel.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/knewstuff.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/knotifyconfig.bst
- components/kde-kf6/kparts.bst
- components/kde-kf6/kpty.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/ktextwidgets.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/kxmlgui.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{gear-branch}/release-service/%{gear-track}/src/konsole-%{gear-track}.tar.xz'
  ref: d81a696d6a316d0c8fabe3cecd83783f656ee97c70ced89513b3fd16e9d216ac
