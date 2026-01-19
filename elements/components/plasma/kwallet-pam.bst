kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- components/qt6/qtbase.bst
- components/kf6/kwallet.bst
- components/deps/socat.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/kwallet-pam-%{plasma-version}.tar.xz'
  ref: 14fa01fe71327aefe36fe5fc794133baf7c8ad4700ab8a2732904ddc83eb17b6
