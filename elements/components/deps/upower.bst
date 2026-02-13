kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/gtk-doc.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/polkit-gobject.bst
- components/deps/libimobiledevice.bst

sources:
- kind: git_repo
  url: freedesktop:upower/upower.git
  track: 'v*'
  ref: v1.91.1-0-g57f59b584e066dddafaa11cb8137b32e6e3d15c7
