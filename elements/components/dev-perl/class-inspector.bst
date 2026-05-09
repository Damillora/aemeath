kind: makemaker

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/dev-lang/perl.bst

sources:
- kind: cpan
  name: 'Class::Inspector'
  suffix: authors/id/P/PL/PLICEASE/Class-Inspector-1.36.tar.gz
  sha256sum: cc295d23a472687c24489d58226ead23b9fdc2588e522f0b5f0747741700694e
