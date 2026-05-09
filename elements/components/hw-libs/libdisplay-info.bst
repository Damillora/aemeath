kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/sys-data/hwdata.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/di-edid-decode'
        - '%{libdir}/libdisplay-info.so'

sources:
- kind: git_repo
  url: freedesktop:emersion/libdisplay-info.git
  track: "*.*"
  ref: 0.3.0-0-g47a5590e9c4eb35d67651b8c05a55f1a48259329
