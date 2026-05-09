kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/nasm.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --prefix="%{prefix}"
    --libdir="%{libdir}"
    --enable-pic
    --enable-shared
    --disable-cli
    --disable-bashcompletion
  make-install: make -j1 %{make-args} DESTDIR="%{install-root}" install-lib-dev install-lib-shared

sources:
- kind: git_repo
  url: videolan:x264.git
  track: stable
  ref: b35605ace3ddf7c1a5d67a2eb553f034aef41d55
