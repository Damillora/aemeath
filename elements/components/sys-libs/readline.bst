kind: autotools

build-depends:
- bootstrap/platforms/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/ncurses.bst

variables:
  conf-local: >-
    --disable-static
    --with-curses
  make-args: >-
    SHLIB_LIBS="-lncursesw"

config:
  configure-commands:
    (<):
      - sed -i 's/-Wl,-rpath,[^ ]*//' support/shobj-conf

sources:
- kind: git_repo
  url: savannah:readline.git
  # readline doesn't provide patch releases, and just commits patches
  # to git. We track master to get those latest fixes without having
  # to backport them one by one.
  # When reviewing an update, please review what patches it introduces
  track: master
  ref: readline-8.3-3-g553d6bb272f26400d6d4d1cac7c1df84c447449b