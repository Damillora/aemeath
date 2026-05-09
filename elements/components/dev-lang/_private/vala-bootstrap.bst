kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/sys-devel/flex.bst
- components/sys-devel/bison.bst

depends:
- components/util-libs/glib.bst

variables:
  cflags-local: -fpermissive
  conf-local: >-
    --disable-valadoc

environment:
  VALAC: /no-valac

config:
  configure-commands:
    (<):
    - touch */*.stamp

sources:
- kind: git_repo
  url: gnome_archive:vala-bootstrap.git
  ref: b2beeaccdf2307ced172646c2ada9765e1747b28
