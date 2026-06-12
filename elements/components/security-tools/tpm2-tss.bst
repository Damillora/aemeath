kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/autoconf-archive.bst
- components/dev-tools/_private/git-basic.bst
- components/sys-services/_private/systemd-minimal.bst

depends:
- components/security-libs/libgcrypt.bst
- components/util-libs/json-c.bst
- components/net-libs/curl.bst
- components/sys-libs/openssl.bst
- components/util-libs/util-linux-libs.bst

variables:
  conf-local: >-
    --disable-doxygen-doc
    --runstatedir=/run
    --with-sysusersdir="$(pkg-config --variable=sysusersdir systemd)"
    --with-tmpfilesdir="$(pkg-config --variable=tmpfilesdir systemd)"
    --with-udevrulesdir="$(pkg-config --variable=udevdir udev)/rules.d"

sources:
- kind: git_repo
  url: github:tpm2-software/tpm2-tss.git
  track: '*.*.*'
  exclude:
  - '*rc*'
  ref: 4.1.3-0-g30e6057722058cb85c292dcb7b77760ad6410d4e
