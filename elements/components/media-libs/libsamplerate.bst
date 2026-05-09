kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/media-libs/libsndfile.bst

variables:
  conf-local: |
    --enable-sndfile

sources:
- kind: git_repo
  url: github:libsndfile/libsamplerate.git
  track: '*.*.*'
  ref: 0.2.2-0-gc96f5e3de9c4488f4e6c97f59f5245f22fda22f7
