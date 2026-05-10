kind: autotools

(@):
- elements/sources/zlib-ng.yml

build-depends:
# Toolchain depends on this package
- bootstrap/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst

variables:
  conf-args: >-
    --prefix=%{prefix}
    --sharedlibdir=%{libdir}
    --libdir=%{libdir}
    --zlib-compat
    --without-new-strategies

sources:
- kind: git_repo
  url: github:zlib-ng/zlib-ng.git
  track: "*.*.*"
  exclude:
  - "*rc*"
  ref: 2.3.3-0-g12731092979c6d07f42da27da673a9f6c7b13586
