kind: cmake

build-depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: |
    -DINSTALL_ARCHDATADIR=lib
    -DQT_DISABLE_RPATH=ON
    -DBUILD_WITH_PCH=FALSE
    -DQT_FEATURE_openssl_linked=ON
    -DQT_FEATURE_system_sqlite=ON
