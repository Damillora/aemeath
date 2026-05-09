kind: make

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  make-args: >-
    BINDIR='%{bindir}'
    SBINDIR='%{bindir}'
    SHAREDIR='%{datadir}'
    MANDIR='%{mandir}'
    INCLUDEDIR='%{includedir}'
    ETCDIR='%{sysconfdir}'
    LIBDIR='%{libdir}'
    NO_ARLIB=1
    CFLAGS="${CFLAGS}"
    CXXFLAGS="${CXXFLAGS}"

sources:
- kind: git_repo
  url: kernel:linux/kernel/git/dhowells/keyutils.git
  track: v*
  ref: v1.6.3-0-gcb3bb194cca88211cbfcdde2f10c0f43c3fb8ec3
