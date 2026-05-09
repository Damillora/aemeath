kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/util-sys/which.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  notparallel: true

config:
  configure-commands:
    (<):
    # force autogen
    - rm -f configure

sources:
- kind: git_repo
  url: github:espeak-ng/espeak-ng.git
  track: '*.*'
  ref: 1.52.0-0-g4870adfa25b1a32b4361592f1be8a40337c58d6c
