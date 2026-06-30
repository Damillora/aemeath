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
  ref: b5f15489ccd3159395f2828043c893035d8c0b4a18b050d188bbea8b6a5a99c5
