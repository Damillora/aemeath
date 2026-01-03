kind: meson

sources:
- kind: tar
  url:
    freedesktop:emersion/libdisplay-info/-/releases/0.3.0/downloads/libdisplay-info-0.3.0.tar.xz
  ref: 6ae77cd937f9cf7d1321d35c116062c4911e8447010a6a713ac4286f7a9d5987

build-depends:
- components/deps/hwdata.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- aemeath/minimal.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/di-edid-decode'
        - '%{libdir}/libdisplay-info.so'
