kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/util-libs/icu.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtshadertools.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qt5compat-everywhere-src-%{qt6-track}.tar.xz'
  ref: cfcb9fdaa051aad54b0e61b24ac5693b4887a86e07609f665fea67328a6f161b
