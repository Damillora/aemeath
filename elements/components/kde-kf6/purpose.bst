kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/dev-tools/intltool.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kdeclarative.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/kitemmodels.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/prison.bst
- components/kde-gear/kaccounts-integration.bst
- components/qt6-libs/accounts-qml-module.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/purpose.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-g42e553beca11ef4e18eb6ce35a7d2ef09318a877
