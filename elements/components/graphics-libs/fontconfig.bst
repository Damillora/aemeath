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
  ref: 2.18.3-0-g0f236723a3c26bd9745e32ba2b3ee21e5f809295
