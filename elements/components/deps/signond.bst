kind: qmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/mesa-headers.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

variables:
  qmake: >-
    qmake6 -makefile %{conf-root}
    PREFIX=%{prefix}
    LIBDIR=%{libdir}
    CMAKECONFIG_INSTALL_DIR=%{libdir}/cmake/SignOnQt6

public:
  bst:
    split-rules:
      signon-qt6:
        - '%{includedir}/signon-qt6'
        - '%{includedir}/signon-qt6/**'
        - '%{libdir}/cmake/SignOnQt6'
        - '%{libdir}/cmake/SignOnQt6/**'
        - '%{libdir}/libsignon-qt6.so*'
        - '%{libdir}/pkgconfig/libsignon-qt6.pc'
      libsignond-qt-docs:
        - '%{docdir}/libsignon-qt'
        - '%{docdir}/libsignon-qt/**'

sources:
- kind: git_repo
  url: gitlab:nicolasfella/signond.git
  track: qt6
  ref: VERSION_8.61-12-gc8ad98249af541514ff7a81634d3295e712f1a39
