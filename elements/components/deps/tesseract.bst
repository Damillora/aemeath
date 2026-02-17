kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/pango.bst
- components/deps/leptonica.bst

runtime-depends:
- components/deps/tessdata.bst

sources:
- kind: git_repo
  url: github:tesseract-ocr/tesseract.git
  track: '*.*'
  ref: 5.5.2-0-g6e1d56a847e697de07b38619356550e5cf4e8633
