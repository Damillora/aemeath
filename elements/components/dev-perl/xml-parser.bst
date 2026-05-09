kind: makemaker

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/dev-lang/perl.bst
- components/dev-perl/file-sharedir.bst
- components/sys-libs/expat.bst

sources:
- kind: cpan
  name: 'XML::Parser'
  suffix: authors/id/T/TO/TODDR/XML-Parser-2.59.tar.gz
  sha256sum: a358fd7c49f5e27717a644a9102bd21dc7fc25a415983279c59b1580e2b62a58
