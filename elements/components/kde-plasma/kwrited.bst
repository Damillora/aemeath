kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kpty.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/kwrited-%{plasma-track}.tar.xz'
  ref: 4158d138596e2dd52dafc87cdfbd0970f50c98e424076dd729aa2c6c09236251
