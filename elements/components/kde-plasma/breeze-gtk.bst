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
  ref: 4e0e913b0515de75492155d028c086c4a522a3f68ebb6f4fab10f8bc646cd518
