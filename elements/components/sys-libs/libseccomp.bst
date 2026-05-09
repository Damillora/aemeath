kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/gperf.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:seccomp/libseccomp.git
  track: v*
  ref: v2.6.0-0-gc7c0caed1d04292500ed4b9bb386566053eb9775
