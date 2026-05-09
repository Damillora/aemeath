kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-ruby/asciidoctor.bst

depends:
- components/security-libs/libpwquality.bst
- components/sys-libs/openssl.bst
- components/util-libs/json-c.bst
- components/util-libs/popt.bst
- components/util-libs/util-linux-libs.bst
- components/filesystem-util/_private/lvm2-stage1.bst

variables:
  conf-local: >-
    --enable-pwquality
    --disable-ssh-token
    --with-tmpfilesdir="%{libdir}/tmpfiles.d"

public:
  cpe:
    product: cryptsetup

sources:
- kind: git_repo
  url: gitlab:cryptsetup/cryptsetup.git
  track: v*
  exclude:
  - '*rc*'
  ref: v2.8.6-0-g738e7001cac91c555cd6798cca9194bb19e54e96
