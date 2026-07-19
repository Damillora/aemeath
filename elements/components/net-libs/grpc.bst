kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/util-libs/abseil-cpp.bst
- components/net-libs/c-ares.bst
- components/util-libs/gflags.bst
- components/util-libs/protobuf.bst

variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=ON
    -DgRPC_SSL_PROVIDER=package
    -DgRPC_PROTOBUF_PROVIDER=package
    -DgRPC_ZLIB_PROVIDER=package
    -DgRPC_GFLAGS_PROVIDER=package
    -DgRPC_CARES_PROVIDER=package
    -DgRPC_ABSL_PROVIDER=package
    -DgRPC_INSTALL_LIBDIR="%{lib}"

sources:
- kind: git_repo
  url: github:grpc/grpc.git
  track: v*
  exclude:
  - '*pre*'
  ref: v1.82.1-0-gacccf84c0df20487d64101f528e5d426541ca4e5
- kind: git_module
  url: github:google/re2.git
  path: third_party/re2
  ref: 0c5616df9c0aaa44c9440d87422012423d91c7d1
- kind: git_module
  url: github:census-instrumentation/opencensus-proto.git
  path: third_party/opencensus-proto
  ref: 4aa53e15cbf1a47bc9087e6cfdca214c1eea4e89
- kind: git_module
  url: github:cncf/xds.git
  path: third_party/xds
  ref: ee656c7534f5d7dc23d44dd611689568f72017a6
- kind: git_module
  url: github:envoyproxy/data-plane-api.git
  path: third_party/envoy-api
  ref: 6ef568cf4a67362849911d1d2a546fd9f35db2ff
- kind: git_module
  url: github:googleapis/googleapis.git
  path: third_party/googleapis
  ref: 2193a2bfcecb92b92aad7a4d81baa428cafd7dfd
- kind: git_module
  path: third_party/protoc-gen-validate
  url: github:envoyproxy/protoc-gen-validate.git
  ref: 7b06248484ceeaa947e93ca2747eccf336a88ecc
- kind: patch
  path: patches/grpc/absl.patch
- kind: patch
  path: patches/grpc/unpin_cython.patch
- kind: patch
  path: patches/grpc/unvendor_absl.patch
