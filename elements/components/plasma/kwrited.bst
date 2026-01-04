kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst
depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kdbusaddons.bst
- components/kf6/knotifications.bst
- components/kf6/kpty.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/kwrited-%{plasma-version}.tar.xz'
  ref: 8e130f5d21ce624a974d8e7267446f317a17fa012a53dbb75d140f65dab7e9a6
