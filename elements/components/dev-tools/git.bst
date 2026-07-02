kind: meson

(@):
- elements/sources/git.yml

build-depends:
- components/buildsystems/meson.bst
- components/dev-lang/rust.bst
- components/util-archive/tar.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/dev-lang/python3.bst
- components/sys-libs/pcre2.bst
- components/net-libs/curl.bst

variables:
  conf-local: >-
    -Dtests=false
    -Dcoccinelle=disabled
    -Dbenchmarks=disabled
    -Dgitk=disabled
    -Dgit_gui=disabled
