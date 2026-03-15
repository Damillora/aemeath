kind: qmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- components/qt6/qttools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/deps/libaccounts-qt.bst
- components/deps/signond.bst

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