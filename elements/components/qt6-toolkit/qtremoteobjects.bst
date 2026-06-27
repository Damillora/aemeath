kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtdeclarative.bst

depends:
- components/qt6-toolkit/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtremoteobjects-everywhere-src-%{qt6-track}.tar.xz'
  ref: 40629895c69531a687a9c0258316cee3f04c2d18b2bf2ad36dc83e76a58f111a
