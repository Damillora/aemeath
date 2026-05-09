kind: make

build-depends:
- components/buildsystems/minimal.bst
- components/sys-devel/bison.bst
- components/sys-devel/flex.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  make-args: >-
    PREFIX="%{prefix}"
    LIBDIR="%{libdir}"
    SBINDIR="%{sbindir}"
    DATADIR="%{datadir}"
    MANDIR="%{mandir}"
    CONF_COLOR=COLOR_OPT_AUTO

sources:
- kind: git_repo
  url: kernel:network/iproute2/iproute2.git
  track: v*
  ref: v7.1.0-0-gd7d8203844bad5f9d8a6f3708c9b39141369aa51
