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
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kdeclarative.bst
- components/kf6/kglobalaccel.bst
- components/kf6/ki18n.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/knewstuff.bst
- components/kf6/kpackage.bst
- components/kf6/kservice.bst
- components/kf6/kwindowsystem.bst
- components/plasma/libksysguard.bst
- components/plasma/ksystemstats.bst
- components/deps/kirigami-addons.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-systemmonitor-%{plasma-version}.tar.xz'
  ref: b6ebf7c1e6f7a42c91a0b511971fd67041d4d9b617edc3a4fc0b08af4a0ec78f
