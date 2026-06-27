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
  ref: 7cc27c174417c89befe4715523abc3ac6a80d318fc2f0e184942f34a17becb6e
