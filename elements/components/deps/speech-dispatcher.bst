kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/texinfo.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/sndfile.bst
- components/deps/dotconf.bst
- components/deps/espeak-ng.bst

variables:
  conf-local: >-
    --with-espeak-ng
    --with-pulse
    --with-oss=no

config:
  install-commands:
    (>):
    - rm '%{install-root}%{infodir}/dir'

sources:
- kind: git_repo
  url: github:brailcom/speechd.git
  track: "*.*"
  ref: 0.12.1-0-g6781ff1709eca1c3d7f748e5361a6aa157dd5f18
