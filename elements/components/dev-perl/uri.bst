kind: makemaker

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/dev-lang/perl.bst

sources:
- kind: cpan
  name: 'URI'
  suffix: authors/id/O/OA/OALDERS/URI-5.35.tar.gz
  sha256sum: 89648964ce5ae006726951f42f718576fbefe9e98a41bd2212d57386163092d2
