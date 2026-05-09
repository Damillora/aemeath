kind: qmake

build-depends:
- components/buildsystems/minimal.bst
- components/qt6-toolkit/qttools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-libs/libaccounts-qt.bst
- components/qt6-libs/signon.bst

runtime-depends:
- components/desktop-services/signond.bst

variables:
  qmake: >-
    qmake6 accounts-qml-module.pro
    PREFIX=%{prefix}
    LIBDIR=%{libdir}
    QT_MAJOR_VERSION=6
    CONFIG+=no_docs

sources:
- kind: git_repo
  url: gitlab:accounts-sso/accounts-qml-module.git
  track: master
  ref: VERSION_0.7-10-g05e79ebbbf3784a87f72b7be571070125c10dfe3