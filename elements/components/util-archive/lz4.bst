kind: make

(@):
- elements/sources/gzip.yml

build-depends:
- bootstrap/platforms/minimal.bst

depends:
- components/sys-libs/glibc.bst

variables:
  make-args: >-
    BUILD_STATIC=no PREFIX=%{install-root}%{prefix}