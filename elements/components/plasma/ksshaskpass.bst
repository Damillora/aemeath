kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kwallet.bst
- components/kf6/kwidgetsaddons.bst
- components/deps/qt6-qtkeychain.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/ksshaskpass-%{plasma-version}.tar.xz'
  ref: 4d8ee561dbfae318e2978411db3d7fdf092663f5d45d369f1e3a9234d872cee0
