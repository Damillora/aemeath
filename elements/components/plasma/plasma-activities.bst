kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-activities-%{plasma-version}.tar.xz'
  ref: 1315b11497b682a1881ae99c40d7af43177046dda3fff76e7b5bbcb598d9b3ef
