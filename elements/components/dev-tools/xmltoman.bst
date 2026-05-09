kind: make

(@):
- elements/sources/xmltoman.yml

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/dev-lang/perl.bst
- components/dev-perl/xml-parser.bst