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
  ref: v1.17.0-0-g6df3ec34557879fff673706f4a1d9fbd0f3a6f0e
