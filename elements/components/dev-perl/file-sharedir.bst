kind: makemaker

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/dev-lang/perl.bst
- components/dev-perl/file-sharedir-install.bst
- components/dev-perl/class-inspector.bst

sources:
- kind: cpan
  name: 'File::ShareDir'
  suffix: authors/id/R/RE/REHSACK/File-ShareDir-1.118.tar.gz
  sha256sum: 3bb2a20ba35df958dc0a4f2306fc05d903d8b8c4de3c8beefce17739d281c958
