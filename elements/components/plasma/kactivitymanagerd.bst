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
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/kactivitymanagerd-%{plasma-version}.tar.xz'
  ref: ed065c2d76c85cf8e10dd72ff8f89e72136fc4c85561a6c985eb97dc518446a1
