kind: make

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  make-args: >-
    prefix="%{install-root}"
    includedir="%{install-root}/%{includedir}"
    libdir="%{install-root}%{libdir}"
  make-install-args: >-
    %{make-args}
    install

config:
  configure-commands:
    - sed -i '/install.*libaio.a/s/^/#/' src/Makefile

sources:
- kind: tar
  url: aemeath:files/libaio-0.3.113.tar.gz
  ref: 1c561c20670c5c09cc8437a622008c0693c6a7816c1f30332da3796953b2f454
