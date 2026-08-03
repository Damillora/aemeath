kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-tools/llvm.bst
- components/graphics-data/spirv-headers.bst

depends:
- components/util-libs/libxml2.bst
- components/dev-libs/llvm-libs.bst
- components/graphics-tools/spirv-tools.bst

variables:
  cmake-local: >-
    -D BUILD_SHARED_LIBS=ON
    -D CMAKE_SKIP_INSTALL_RPATH=ON
    -D LLVM_EXTERNAL_SPIRV_HEADERS_SOURCE_DIR=/usr

sources:
- kind: git_repo
  # This needs to be in sync with LLVM version
  url: github:KhronosGroup/SPIRV-LLVM-Translator.git
  track: "v%{llvm-track}*"
  ref: v22.1.5-0-g27afcfe385cf542197dfde8c658e1f5ff53fc2fc
