kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/x11-tools/util-macros.bst
- components/x11-font/font-util.bst
- components/x11-apps/mkfontscale.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/font/encodings.git
  track: encodings-*
  ref: encodings-1.1.0-0-ga7e63704951b95351096c1d96808d48d0fb7e0a8
