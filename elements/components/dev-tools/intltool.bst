kind: autotools

build-depends:
- components/buildsystems/autotools.bst

runtime-depends:
- components/dev-tools/gettext.bst

depends:
- components/dev-perl/xml-parser.bst
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: tar
  url: launchpad:intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz
  ref: 67c74d94196b153b774ab9f89b2fa6c6ba79352407037c8c14d5aeb334e959cd
- kind: patch_queue
  path: patches/intltool/
