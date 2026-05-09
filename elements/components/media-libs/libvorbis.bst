kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/media-libs/libogg.bst

variables:
  conf-local: --disable-static

sources:
- kind: git_repo
  url: github:xiph/vorbis.git
  track: v*
  ref: v1.3.7-0-g0657aee69dec8508a0011f47f3b69d7538e9d262
