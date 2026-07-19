kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/dev-tools/gettext.bst
- components/dev-lang/perl.bst

sources:
- kind: gnu
  name: help2man
  ref:
    suffix: help2man/help2man-1.49.3.tar.xz
    sha256sum: 4d7e4fdef2eca6afe07a2682151cea78781e0a4e8f9622142d9f70c083a2fd4f
