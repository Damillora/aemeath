kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/util-libs/glib.bst

public:
  bst:
    integration-commands:
    - |
      update-desktop-database

sources:
- kind: git_repo
  url: freedesktop:xdg/desktop-file-utils.git
  track: '*.*'
  ref: 0.28-0-gbc403b7e9ea4847b1590c41eb1581aa3f1d24b36
