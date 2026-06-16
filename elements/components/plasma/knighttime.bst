kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qttools.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/ki18n.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtpositioning.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kholidays.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/knighttime-%{plasma-version}.tar.xz'
  ref: c2fc7529cef3b3a80be4715286d027fc8908ef0fe8040aea106831a5265fc113
