kind: make

build-depends:
- components/buildsystems/minimal.bst
- components/dev-lang/python3.bst
- components/util-sys/which.bst
- components/util-misc/rdfind.bst
- components/util-misc/parallel.bst
- components/util-archive/zstd.bst
- components/dev-tools/_private/git-basic.bst

environment:
  MAX_JOBS: '%{max-jobs}'
environment-nocache:
- MAX_JOBS

variables:
  license-files-extra: WHENCE MIT
  strip-binaries: ''

  make-args: >-
    PREFIX="%{prefix}"
    FIRMWAREDIR="%{libdir}/firmware"
    NUM_JOBS="$MAX_JOBS"

  make: ''
  make-install: make -j1 %{make-args} DESTDIR="%{install-root}" install-zst dedup

sources:
- kind: git_repo
  url: kernel:linux/kernel/git/firmware/linux-firmware.git
  track: '[0-9]*'
  ref: 20260622-0-gb2722d241309a1872446c1d00c2e812bad055f89
