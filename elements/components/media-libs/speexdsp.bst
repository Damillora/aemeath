kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:xiph/speexdsp.git
  track: SpeexDSP-*
  exclude:
  - SpeexDSP-*rc*
  - SpeexDSP-*beta*
  ref: SpeexDSP-1.2.1-0-g1b28a0f61bc31162979e1f26f3981fc3637095c8
