kind: make

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/dev-lang/perl.bst
- components/dev-perl/xml-parser.bst

sources:
- kind: tar
  url: sourceforge:xmltoman/files/xmltoman/xmltoman-0.4.tar.gz/xmltoman-0.4.tar.gz
  ref: 948794a316aaecd13add60e17e476beae86644d066cb60171fc6b779f2df14b0
