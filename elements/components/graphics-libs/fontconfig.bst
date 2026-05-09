kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gperf.bst

depends:
- components/sys-libs/expat.bst
- components/graphics-libs/freetype.bst

public:
  bst:
    integration-commands:
    - |
      if [ -d "%{datadir}/fonts" ]; then
        touch -d @0 "%{datadir}/fonts" /usr/share/fonts/*
        fc-cache -rs
      fi

sources:
- kind: git_repo
  url: freedesktop:fontconfig/fontconfig.git
  track: "*.*"
  ref: 2.18.1-0-gd87ec67db56518e9e9c36ff38f151dfc9b728b2e
