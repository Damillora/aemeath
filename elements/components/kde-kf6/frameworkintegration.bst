kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/knewstuff.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/qt6-libs/appstream-qt.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: kde:frameworks/frameworkintegration.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-ge5ae5dd3b6eddafe72ffd4b7d4dcb27fce7e5201
