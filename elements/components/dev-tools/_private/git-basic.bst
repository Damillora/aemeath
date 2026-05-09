kind: meson

(@):
- elements/sources/git.yml

build-depends:
- components/buildsystems/meson.bst
- components/dev-lang/python3.bst
- components/sys-libs/openssl.bst
- components/util-archive/tar.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/zlib-ng.bst

variables:
  meson-local: >-
    -Dauto_features=disabled
    -Dtests=false
    -Dcurl=disabled

config:
  install-commands:
  - |
    cd %{build-dir}
    install -m 755 -D -t "%{install-root}%{bindir}" git

public:
  cpe:
    vendor: git-scm
