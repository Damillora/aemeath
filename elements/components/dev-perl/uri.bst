kind: makemaker

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/dev-lang/perl.bst

sources:
- kind: cpan
  name: 'URI'
  suffix: authors/id/O/OA/OALDERS/URI-5.36.tar.gz
  sha256sum: 32719e57413db6e18492e104707b95c2210df637614c512e7368c9ec3c2f783b
