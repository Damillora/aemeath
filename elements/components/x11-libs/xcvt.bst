kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxcvt.git
  track: libxcvt-*
  ref: libxcvt-0.1.3-0-gdd8631c61465cc0de5e476c7a98e56528d62b163
