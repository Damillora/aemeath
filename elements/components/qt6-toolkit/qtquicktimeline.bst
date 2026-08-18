kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtquicktimeline-everywhere-src-%{qt6-track}.tar.xz'
  ref: 250af10500a0c4045dde74e107448a69a44d58af8b7e9a91704a808d5f881d17
