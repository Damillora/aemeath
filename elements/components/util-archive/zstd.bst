kind: make

(@):
- elements/sources/zlib-ng.yml

build-depends:
# Toolchain depends on this package
- bootstrap/buildsystems/minimal.bst

depends:
- components/sys-libs/glibc.bst

sources:
- kind: git_repo
  url: github:facebook/zstd.git
  track: v*.*.*
  exclude:
  - "*-kernel"
  ref: v1.5.7-0-gf8745da6ff1ad1e7bab384bd1f9d742439278e99

