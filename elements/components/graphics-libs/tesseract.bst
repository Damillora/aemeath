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
  ref: 5.5.3-0-gdb0ec62f81b0737fbbe184d8fea40af5738f8eef
