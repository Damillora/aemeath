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
  ref: v6.27.0-0-g154c8805d56b4f2450ac83d03c385b65e1613a3b
