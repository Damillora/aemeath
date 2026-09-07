kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-lang/python3.bst
- components/dev-tools/doxygen.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/zlib-ng.bst
- components/util-archive/xz.bst
- components/util-libs/icu.bst

variables:
  meson-local: >-
    -D history=enabled
    -D icu=enabled
    -D python=enabled
    -D docs=disabled

config:
  configure-commands:
    (<):
    - sed -i "/'git'/,+3d" meson.build
  install-commands:
    (>):
    - sed "s/--static/--shared/" -i %{install-root}%{bindir}/xml2-config

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/xml2-config'
        - '%{libdir}/xml2Conf.sh'
  cpe:
    ignored:
    - CVE-2016-3709

sources:
- kind: git_repo
  url: gnome:libxml2.git
  track: v*
  ref: v2.15.4-0-g96498992efa48d52b0e8b83058bd88dbdaf153c1
