kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtshadertools.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qt3d-everywhere-src-%{qt6-version}.tar.xz'
  ref: 60593fd54f7b1e48dc67ddce0f1113e4593878872539677104c92926ef039c9a
