kind: manual

build-depends:
- components/platform/minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
    - install -Dm644 -t "%{install-root}%{datadir}/pixmaps" aemeath-os.png
    - install -Dm644 aemeath-os.png "%{install-root}%{datadir}/plymouth/themes/spinner/watermark.png"

sources:
- kind: local
  path: files/plymouth/aemeath-os.png
