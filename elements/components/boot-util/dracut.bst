kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-ruby/asciidoctor.bst
- components/util-libs/libxslt.bst
- components/dev-tools/docbook-xsl.bst
- components/sys-services/systemd.bst

depends:
- components/util-sys/util-linux.bst
- components/util-sys/kmod.bst
- components/filesystem-util/e2fsprogs.bst

runtime-depends:
- components/util-archive/cpio.bst
- components/util-sys/gawk.bst

variables:
  # This project documents it doesn't support build-dir
  build-dir: '.'
  lib: 'lib'

sources:
- kind: git_repo
  url: github:dracut-ng/dracut-ng.git
  track: '[0-9]*'
  ref: 111-0-gb3b4f7ef914b84964a56500cfec83f21dc513e6a
