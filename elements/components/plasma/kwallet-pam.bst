kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/kf6/kwallet.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/libgcrypt.bst

runtime-depends:
- components/deps/socat.bst

variables:
  cmake-local: |
    -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/kwallet-pam-%{plasma-version}.tar.xz'
  ref: 66d9e0e36deea2ce77134bb24c34cbf8dcf623170462b4a9042f7f0e64c27ddf
