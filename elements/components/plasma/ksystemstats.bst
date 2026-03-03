kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libnl.bst
- components/qt6/qtbase.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/solid.bst
- components/kf6/networkmanager-qt.bst
- components/plasma/libksysguard.bst
- components/deps/lm-sensors.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/ksystemstats-%{plasma-version}.tar.xz'
  ref: cec107edeee7a715a358fb801f89b34b0f8e5422a5dd1bd9938551bf2f8eda33
