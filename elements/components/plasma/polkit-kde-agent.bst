kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kirigami.bst
- components/kf6/knotifications.bst
- components/kf6/kwindowsystem.bst
- components/deps/qt6-polkit-qt.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/polkit-kde-agent-1-%{plasma-version}.tar.xz'
  ref: ab446842fcd60c9a740c34d851feef98fca2ef600a3c949f2ec3858838fb8a24
