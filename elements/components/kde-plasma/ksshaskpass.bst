kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kwallet.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/qt6-libs/qtkeychain.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/ksshaskpass-%{plasma-track}.tar.xz'
  ref: 638141fd26395005b5dd1f7d0454ba9fea7d264ba93437981f34553552a2d40c
