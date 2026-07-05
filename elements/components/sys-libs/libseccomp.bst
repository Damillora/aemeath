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
  ref: v2.6.1-0-ga81cc2de8ee7a33633defc88bb8a2d986b421613
