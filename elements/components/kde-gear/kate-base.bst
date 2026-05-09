kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/security-libs/gpgmepp.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/karchive.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/knewstuff.bst
- components/kde-kf6/ktexteditor.bst
- components/kde-kf6/kuserfeedback.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: "kde_download:%{gear-branch}/release-service/%{gear-track}/src/kate-%{gear-track}.tar.xz"
  ref: f138a5b022b6ca0562b903bea7b2a794bb6bb18b88a9277ffcaf418b9b49018d

public:
  bst:
    split-rules:
      kate:
      - "%{bindir}/kate"
      - "%{datadir}/applications/org.kde.kate.desktop"
      - "%{datadir}/icons/hicolor/*/apps/kate.*"
      - "%{datadir}/man/man1/kate.1*"
      kate-libs:
      - "%{libdir}/libkateprivate.so.*"
      kwrite:
      - "%{bindir}/kwrite"
      - "%{datadir}/applications/org.kde.kwrite.desktop"
      - "%{datadir}/icons/hicolor/*/apps/kwrite.*"
      - "%{datadir}/man/man1/kwrite.1*"
