kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/texinfo.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --without-gcc-arch

config:
  install-commands:
    (>):
    - |
      rm "%{install-root}%{infodir}/dir"

sources:
- kind: git_repo
  url: github:libffi/libffi.git
  track: v*
  exclude:
  - v*-rc*
  - "v*-dev*"
  ref: v3.8.0-0-g12ffd1f9dc56fcea79d2f742f424301ae668d663
