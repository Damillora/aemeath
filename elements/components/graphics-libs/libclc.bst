kind: cmake

(@):
- elements/sources/llvm.yml

build-depends:
- components/buildsystems/cmake.bst
- components/dev-tools/llvm.bst
- components/graphics-tools/spirv-tools.bst
- components/graphics-tools/spirv-llvm-translator.bst
- components/dev-lang/python3.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  cmake: cmake "-B%{build-dir}" -Slibclc -G"%{generator}" %{cmake-args}
