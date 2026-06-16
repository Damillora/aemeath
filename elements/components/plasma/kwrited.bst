kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/kcoreaddons.bst
- components/kf6/ki18n.bst
- components/kf6/knotifications.bst
- components/kf6/kpty.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/kwrited-%{plasma-version}.tar.xz'
  ref: 75439a92561f6c332804d1d27dae15bc5755b8c9af28da79d16c032d50903b10
