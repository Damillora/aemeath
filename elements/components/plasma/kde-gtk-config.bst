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
  ref: 666b4a5ed1fcb969c98c102b5477c351d073422d4fa80eb84a41b007d9d9885a
