kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/graphics-libs/libpng.bst

sources:
- kind: git_repo
  url: github:fukuchi/libqrencode.git
  track: 'v*'
  ref: v4.1.1-0-g715e29fd4cd71b6e452ae0f4e36d917b43122ce8
