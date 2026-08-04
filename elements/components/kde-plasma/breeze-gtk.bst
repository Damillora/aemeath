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
  ref: f30fc5ae6080037ad8e402e59087f76aa5270aebc7fa0d5d1bb7440abab4b2ce
