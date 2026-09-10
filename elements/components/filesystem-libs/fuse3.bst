kind: meson

build-depends:
- components/buildsystems/meson.bst

runtime-depends:
- components/util-sys/util-linux.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  meson-local: >-
    -Duseroot=false
    -Dexamples=false
    -Dtests=false

config:
  install-commands:
    (>):
    - rm -r "%{install-root}/etc/init.d"

public:
  bst:
    integration-commands:
    - |
      [ -f "%{bindir}/fusermount" ] || ln -s fusermount3 "%{bindir}/fusermount"
  initial-script:
    script: |
      #!/bin/bash
      sysroot="${1}"
      chmod 4755 "${sysroot}%{bindir}/fusermount3"
  cpe:
    vendor: fuse_project
    name: fuse

sources:
- kind: git_repo
  url: github:libfuse/libfuse.git
  track: fuse-*
  exclude:
  - "*rc*"
  ref: fuse-3.18.3-0-g3dbcfce64ba0dd529cec7b94305662e7901a991b
