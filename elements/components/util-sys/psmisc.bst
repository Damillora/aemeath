kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst
- components/sys-libs/gettext.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/ncurses.bst

sources:
- kind: git_repo
  url: gitlab:psmisc/psmisc.git
  track: v*.*
  ref: v23.7rc1-0-g3b4adf22ad9623fdbca3c89c6d59b15e7fe309f1

