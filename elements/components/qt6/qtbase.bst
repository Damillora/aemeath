kind: cmake

build-depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
  - aemeath/platform.bst

variables:
  cmake-local: |
    -DINSTALL_ARCHDATADIR=lib
    -DQT_DISABLE_RPATH=ON
    -DBUILD_WITH_PCH=FALSE
    -DQT_FEATURE_openssl_linked=ON
    -DQT_FEATURE_system_sqlite=ON

sources:
  - kind: tar
    url: qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtbase-everywhere-src-%{qt6-version}.tar.xz
