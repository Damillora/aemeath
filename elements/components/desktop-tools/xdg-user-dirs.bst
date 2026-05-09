kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/docbook-xsl.bst
- components/util-libs/libxslt.bst
- components/sys-services/systemd.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: freedesktop:xdg/xdg-user-dirs.git
  track: 'v*.*'
  ref: v0.20-0-gcd05b6d29da1abdb3cd253ef496ae7fd1593e4bb
