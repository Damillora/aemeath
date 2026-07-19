kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-args: >-
    --prefix=%{prefix}
    --includedir=%{includedir}
    --libdir=%{libdir}
    --libdevdir=%{libdir}
    --mandir=%{mandir}
    --datadir=%{datadir}

  make-args: "src"

sources:
- kind: git_repo
  url: github:axboe/liburing.git
  track: liburing-*
  exclude:
  - '*rc*'
  ref: liburing-2.15-0-gd41bf9220ec39277ff235379e9089d9e0fd6c2a5
