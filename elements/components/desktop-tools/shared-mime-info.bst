kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/docbook-xsl.bst
- components/dev-tools/xmlto.bst

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
  ref: 2.5.1-0-gfd8ab89c20093f1bfba8fa9e302ba584fffd0fd7
