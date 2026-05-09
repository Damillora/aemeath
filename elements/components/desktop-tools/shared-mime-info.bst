kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/docbook-xsl.bst

depends:
- components/util-libs/libxml2.bst
- components/util-libs/glib.bst

public:
  bst:
    integration-commands:
    - PKGSYSTEM_ENABLE_FSYNC=0 update-mime-database "%{datadir}/mime"

sources:
- kind: git_repo
  url: freedesktop:xdg/shared-mime-info.git
  track: '*.*'
  ref: 2.4-0-g9a6d6b8e963935f145f3a1ef446552de6996dada
