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
  ref: 2.18.2-0-ga4e25ec391d417e4bca052fbfa5cd7ce5f7fd39e
