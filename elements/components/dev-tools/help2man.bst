kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/dev-tools/gettext.bst
- components/dev-lang/perl.bst

sources:
- kind: tar
  url: gnu:help2man/help2man-%{source-track_help2man}.tar.xz
  ref: 4d7e4fdef2eca6afe07a2682151cea78781e0a4e8f9622142d9f70c083a2fd4f
