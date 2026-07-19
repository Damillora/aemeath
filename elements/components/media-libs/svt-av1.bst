kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-tools/nasm.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  cmake-local: >-
    -DREPRODUCIBLE_BUILDS=1
    -DBUILD_SHARED_LIBS=ON
    -DBUILD_TESTING=OFF
    -DUSE_CPUINFO=OFF

sources:
- kind: git_repo
  url: gitlab:AOMediaCodec/SVT-AV1.git
  track: "v*"
  exclude:
  - "*-rc*"
  - "*cqp-extended*"
  ref: v4.2.0-0-g9292ec8e32bce26f781f277ec8739b53426c4300
