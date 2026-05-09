kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/ncurses.bst
- components/sys-libs/systemd-libs.bst

variables:
  conf-local: >-
    --disable-static
    --disable-kill
    --enable-watch8bit
    --with-systemd

sources:
- kind: git_repo
  url: gitlab:procps-ng/procps.git
  track: v*
  exclude:
  - '*rc*'
  ref: v4.0.6-0-g4dafddf4c3f4646caa517f039a2307e92657ec93
