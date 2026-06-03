kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/dev-lang/python3.bst
depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/libffi.bst
- components/util-archive/zstd.bst

variables:
  conf-root: llvm
  cmake-local: >-
    -D CMAKE_SKIP_RPATH:BOOL=ON
    -D LLVM_BUILD_LLVM_DYLIB=ON
    -D LLVM_LINK_LLVM_DYLIB=ON
    -D LLVM_ENABLE_RTTI=ON
    -D LLVM_TARGETS_TO_BUILD="X86;AMDGPU;NVPTX;BPF"
    -D LLVM_ENABLE_PROJECTS="clang;lld;clang-tools-extra"
    -D LLVM_ENABLE_RUNTIMES="compiler-rt"
    -D LLVM_BINUTILS_INCDIR=%{includedir}
    -D LLVM_INCLUDE_BENCHMARKS=OFF
    -D LLVM_ENABLE_ZLIB:BOOL=ON
    -D LLVM_ENABLE_ZSTD=ON
    -D LLVM_ENABLE_FFI:BOOL=ON
    -D CLANG_DEFAULT_PIE_ON_LINUX=ON
    -D CLANG_CONFIG_FILE_SYSTEM_DIR=%{sysconfdir}/clang

config:
  configure-commands:
  - |
    env CC=gcc CXX=g++ %{cmake}

public:
  cpe:
    product: llvm

sources:
- kind: git_repo
  url: github:llvm/llvm-project.git
  track: llvmorg-*
  exclude:
  - llvmorg-*-rc*
  - llvmorg-*-init*
  ref: llvmorg-22.1.7-0-ga255c1ed36a1d06f79bd2633ba9f8d900153007c
