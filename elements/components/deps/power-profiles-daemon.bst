kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/gtk-doc.bst
- freedesktop-sdk.bst:components/pygobject.bst
- components/deps/python3-dbusmock.bst
- components/deps/umockdev.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd.bst
- components/deps/upower.bst

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
