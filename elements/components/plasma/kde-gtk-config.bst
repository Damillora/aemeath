kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/deps/sassc.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/gtk3.bst
- components/qt6/qtbase.bst
- components/qt6/qtsvg.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/kwindowsystem.bst
- components/plasma/kdecoration.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/kde-gtk-config-%{plasma-version}.tar.xz'
  ref: 2902a012ba85d2d201f879d17f0b4f51910e43a1cb0d761788b063b0c17d7b10
