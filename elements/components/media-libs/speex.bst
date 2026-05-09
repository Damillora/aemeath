kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/media-libs/libogg.bst
- components/media-libs/speexdsp.bst

variables:
  conf-local: --disable-static

sources:
- kind: git_repo
  url: github:xiph/speex.git
  track: Speex-*
  ref: Speex-1.2.1-0-g5dceaaf3e23ee7fd17c80cb5f02a838fd6c18e01
