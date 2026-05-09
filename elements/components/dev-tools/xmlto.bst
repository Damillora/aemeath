kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/docbook-xsl.bst
- components/sys-devel/flex.bst

depends:
- components/util-libs/libxslt.bst
- components/util-sys/util-linux.bst

config:
  configure-commands:
    (<):
    - rm xmlif/xmlif.c

sources:
- kind: git_repo
  url: aemeath_mirror:xmlto.git
  track: '*.*.*'
  ref: 0.0.29-0-g635dcd5bc84a7b67a3a2050a179d96e1d3050b15
