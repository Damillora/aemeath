kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ""

config:
  install-commands:
    - |
      install -Dm0644 -t "%{install-root}%{datadir}/tessdata/" osd.*
      install -Dm0644 -t "%{install-root}%{datadir}/tessdata/" equ.*
      install -Dm0644 -t "%{install-root}%{datadir}/tessdata/" eng.*
      install -Dm0644 -t "%{install-root}%{datadir}/tessdata/" jpn.*
      install -Dm0644 -t "%{install-root}%{datadir}/tessdata/" jpn_vert.*


sources:
- kind: git_repo
  url: github:tesseract-ocr/tessdata.git
  track: '*.*'
  ref: 4.1.0-0-g4767ea922bcc460e70b87b1d303ebdfed0897da8
