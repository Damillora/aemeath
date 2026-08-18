kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtpositioning.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtlocation-everywhere-src-%{qt6-track}.tar.xz'
  ref: 4d50a7ece01fbd76f6ec17c650236cb56ea60f987c52fc391dac72f13f65c23a
