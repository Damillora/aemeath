kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qttools.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF \
    -DBUILD_QT5=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/plasma-workspace-wallpapers-%{plasma-version}.tar.xz'
  ref: 5b59f7a437fe2b5d8c2fba460ae8a472378e4c4bd42fa725a90735bcf5f3a0b1
