kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kconfig.bst
- components/kde-plasma/plasma-activities.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-activities-stats-%{plasma-track}.tar.xz'
  ref: 62f4b80965f0d616e50b95d7eecfce4abb92b426190f8ce76d929b94106c38f5
