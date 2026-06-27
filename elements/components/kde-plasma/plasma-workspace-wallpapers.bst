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
  ref: b3cbb7faa66a384f137c34f9384eef0514f3325421b449b187b57b5e065d699a
