kind: qmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/glib.bst
- components/qt6/qtbase.bst
- components/deps/libaccounts-glib.bst

variables:
  qmake: >-
    qmake6 -makefile %{conf-root}
    PREFIX=%{prefix}
    LIBDIR=%{libdir}
    CMAKECONFIG_INSTALL_DIR=%{libdir}/cmake/AccountsQt6

sources:
- kind: git_repo
  url: gitlab:accounts-sso/libaccounts-qt.git
  track: VERSION_*
  ref: VERSION_1.17-0-gc8fdd05f1a1ff5886f4649d24f2ba8c5f61cfa3a
