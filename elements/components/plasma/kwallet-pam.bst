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
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/kwallet-pam-%{plasma-version}.tar.xz'
  ref: 71dbd5d6ab5243e78c523ce382d53bd14c35731af09497fbe929bca41b69aed9
