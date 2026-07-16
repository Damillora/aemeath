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
  ref: 4.2.0-0-g506c5e6db0c8514f321dc16a0da2580483f3df04
