kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-python3/pycairo.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/dev-tools/sassc.bst
- components/kde-plasma/breeze.bst

runtime-depends:
- components/gtk-toolkit/gtk3.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/breeze-gtk-%{plasma-track}.tar.xz'
  ref: fa93b6819dc5e4acb6e96ec0dbb3d4de7eebff2f1de480be01776a80107a087b
