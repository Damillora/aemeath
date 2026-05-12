kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-libs/libxml2.bst

variables:
  conf-local: >-
    --without-python
    --disable-static

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/xslt-config'
        - '%{libdir}/xsltConf.sh'
  cpe:
    ignored:
    - CVE-2022-29824

sources:
- kind: git_repo
  url: gnome:libxslt.git
  track: v*
  ref: v1.1.45-0-g35323d6a15f6e63c9919ddbc0abe64c90a0dd88a
