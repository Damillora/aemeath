kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-libs/xtrans.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxshmfence.git
  track: libxshmfence-*
  ref: libxshmfence-1.3.3-0-g89f064748554e11832a3ec783945e1f4c7fe846e
