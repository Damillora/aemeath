kind: make

build-depends:
- components/buildsystems/minimal.bst
- components/util-sys/which.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-data/hwdata.bst

variables:
  make-args: >-
    PREFIX="%{prefix}"
    SBINDIR="%{prefix}/bin"
    SHAREDIR="%{datadir}/hwdata"
    MANDIR="%{mandir}"
    LIBDIR="%{libdir}"
    ZLIB=no
    SHARED=yes
    OPT="${CFLAGS}"
    STRIP=""
  make-install: make -j1 %{make-args} DESTDIR="%{install-root}" install install-lib

config:
  install-commands:
    (>):
    # pci.ids is provided by the hwdata package
    - rm "%{install-root}%{datadir}/hwdata/pci.ids"

sources:
- kind: git_repo
  track: v*
  url: kernel:utils/pciutils/pciutils.git
  ref: v3.15.0-0-gb424ac8b498317965bfd3ab33ae21b158a7f1dd2
