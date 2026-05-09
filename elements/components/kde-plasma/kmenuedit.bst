kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcompletion.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kconfigwidgets.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kglobalaccel.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kitemviews.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/kxmlgui.bst
- components/kde-kf6/sonnet.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/kmenuedit-%{plasma-track}.tar.xz'
  ref: e272153222727b0b75f54ab7cbcbe1156d43473c206b5a73d67e5aea36df8449
