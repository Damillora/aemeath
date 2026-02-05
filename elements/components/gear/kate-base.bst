kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gpgmepp.bst
- components/qt6/qtbase.bst
- components/kf6/karchive.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/knewstuff.bst
- components/kf6/ktexteditor.bst
- components/kf6/kuserfeedback.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: "kde_stable:release-service/%{gear-version}/src/kate-%{gear-version}.tar.xz"
  ref: 084d7d75c70326438f4a34fecb3576d9968808650c1852c44726472f9267062a

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
