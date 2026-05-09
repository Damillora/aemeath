kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/sys-services/_private/systemd-minimal.bst

depends:
- components/util-libs/libcbor.bst

variables:
  cmake-local: >-
    -DBUILD_STATIC_LIBS:BOOL=FALSE
sources:
- kind: git_repo
  url: github:Yubico/libfido2.git
  track: '*.*.*'
  ref: 1.17.0-0-gb974e7cf2ee7392134cc12c08b76a068cf250dd8
