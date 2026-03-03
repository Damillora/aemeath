kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/deps/boost.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kglobalaccel.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kservice.bst
- components/kf6/kxmlgui.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/kactivitymanagerd-%{plasma-version}.tar.xz'
  ref: 1535defb7a1f187e36dfc40168ea6e89eb06a6e01e7bcee06175049dd9559178
