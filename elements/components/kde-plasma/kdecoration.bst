kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/ki18n.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/kdecoration-%{plasma-track}.tar.xz'
  ref: 3a5d8f57bab452eabd1aadc45088b95a669a951626c7e601f6a0ef36030684bf
