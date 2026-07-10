kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/desktop-libs/libsecret.bst
- components/security-libs/libgcrypt.bst
- components/security-libs/gpgmepp.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kwindowsystem.bst
- components/qt6-libs/qca.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kwallet.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.28.0-0-ge4483b9a7c9466e3508cf9c11ee9668a3686d030
