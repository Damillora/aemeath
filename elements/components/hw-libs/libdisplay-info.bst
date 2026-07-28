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
  ref: 0.4.0-0-gc67a3e9bedb05ab61c7443704a1a107e76254595
