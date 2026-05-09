kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/doxygen.bst
- components/dev-tools/nasm.bst
- components/util-sys/which.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-args: |
    --prefix="%{prefix}" \
    --libdir="%{libdir}" \
    --enable-pic \
    --enable-optimizations \
    --target="x86_64-linux-gcc" \
    --disable-static \
    --enable-shared \
    --enable-vp8 \
    --enable-vp9 \
    --enable-libs \
    --disable-install-docs \
    --as=nasm \
    --enable-vp9-highbitdepth

sources:
- kind: git_repo
  url: github:webmproject/libvpx.git
  track: "v*"
  exclude:
  - "*-rc*"
  ref: v1.16.0-0-g1024874c5919305883187e2953de8fcb4c3d7fa6
- kind: patch_queue
  path: patches/libvpx
