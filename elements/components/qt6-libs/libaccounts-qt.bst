kind: qmake

build-depends:
- components/buildsystems/minimal.bst
- components/dev-tools/doxygen.bst
- components/dev-tools/gobject-introspection.bst

depends:
- components/util-libs/glib.bst
- components/qt6-toolkit/qtbase.bst
- components/desktop-libs/libaccounts-glib.bst

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
