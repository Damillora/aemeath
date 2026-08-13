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
  ref: v4.0.7-0-g66b48a3720d46f304f0fa76f720ca925fa48d97e
