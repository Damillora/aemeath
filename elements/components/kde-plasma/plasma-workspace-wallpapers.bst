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
  ref: b8f5db6b254fdd75f9f28d0c6ff0af87dcbc3ec69c1a3881d5bdb70035071551
