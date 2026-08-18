kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtshadertools.bst
- components/qt6-toolkit/qtquicktimeline.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtquick3d-everywhere-src-%{qt6-track}.tar.xz'
  ref: 3ab8e1f08edb26373a37cf9d42c23e7d092c1334566b953fbb51cb1b936737b4
