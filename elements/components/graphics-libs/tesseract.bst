kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/net-libs/curl.bst
- components/util-libs/icu.bst
- components/graphics-libs/pango.bst
- components/graphics-libs/leptonica.bst

runtime-depends:
- components/graphics-data/tessdata.bst

sources:
- kind: git_repo
  url: github:tesseract-ocr/tesseract.git
  track: '*.*'
  ref: 5.5.2-0-g6e1d56a847e697de07b38619356550e5cf4e8633
