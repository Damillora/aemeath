kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/extra-cmake-modules.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/oxygen-sounds-%{plasma-track}.tar.xz'
  ref: 799a12bc37b630ca0fd65082e2e7d891aff76cfdf81406ff8c76ceb487bcd657
