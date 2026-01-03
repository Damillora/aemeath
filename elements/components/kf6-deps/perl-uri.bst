kind: makemaker

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/perl.bst

sources:
- kind: cpan
  name: URI
  suffix: authors/id/O/OA/OALDERS/URI-5.34.tar.gz
  sha256sum: de64c779a212ff1821896c5ca2bb69e74767d2674cee411e777deea7a22604a8
