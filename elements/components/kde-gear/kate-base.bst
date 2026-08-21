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
  ref: abe6ceb81155eaa4c046fbff21deaed2a1cd3b031f732acfb95aa283e68d0f52

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
