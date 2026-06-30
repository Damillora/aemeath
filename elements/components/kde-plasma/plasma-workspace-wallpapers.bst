kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/plasma-workspace-wallpapers-%{plasma-track}.tar.xz'
  ref: 9d9c95832ac0b478ee94cb49fcadfbbf8d581bf0d44f4d6c72e12e39a8048b98
