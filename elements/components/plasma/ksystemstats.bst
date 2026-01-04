kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/solid.bst
- components/kf6/networkmanager-qt.bst
- components/plasma/libksysguard.bst
- components/deps/lm-sensors.bst
- freedesktop-sdk.bst:components/libnl.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/ksystemstats-%{plasma-version}.tar.xz'
  ref: a53038232221b773c695312c6cd3f11a903be1aa186fd4c274ddded8c1ac31fb
