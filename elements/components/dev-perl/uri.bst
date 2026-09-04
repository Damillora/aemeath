kind: makemaker

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/dev-lang/perl.bst

sources:
- kind: cpan
  name: 'URI'
  suffix: authors/id/O/OA/OALDERS/URI-5.37.tar.gz
  sha256sum: 5a8750ddd8ee743d7cc89bebdd542a9b78a34023164ebe19dea0c248e121c21e
