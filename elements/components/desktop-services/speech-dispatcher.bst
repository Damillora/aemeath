kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/sys-services/systemd.bst
- components/dev-tools/texinfo.bst

depends:
- components/util-libs/glib.bst
- components/sys-libs/systemd-libs.bst
- components/media-libs/libpulse.bst
- components/media-libs/libsndfile.bst
- components/util-libs/dotconf.bst
- components/desktop-tools/espeak-ng.bst

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
