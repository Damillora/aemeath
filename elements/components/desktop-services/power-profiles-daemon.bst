kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/gtk-doc.bst
- components/dev-python3/pygobject.bst
- components/dev-python3/dbusmock.bst
- components/hw-tools/umockdev.bst

depends:
- components/util-libs/libgudev.bst
- components/sys-services/systemd.bst
- components/desktop-services/polkit.bst
- components/desktop-services/upower.bst

variables:
  # Disable manpage until we have argparse-manpage
  # Disable bash completions until we have shtab
  meson-local: >-
    -Dbashcomp=disabled
    -Dgtk_doc=true
    -Dmanpage=disabled
    -Dpylint=disabled

sources:
- kind: git_repo
  url: freedesktop:upower/power-profiles-daemon.git
  track: '*.*'
  ref: 0.30-0-g5b4994c8a91290481bef87a5bae95391d0ec677f
