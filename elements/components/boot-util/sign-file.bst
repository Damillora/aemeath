kind: manual

(@):
- elements/sources/linux.yml

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/openssl.bst

config:
  build-commands:
  - gcc ${CFLAGS} ${LDFLAGS} -Iinclude/uapi -o sign-file scripts/sign-file.c -lcrypto

  install-commands:
  - install -Dm755 -t "%{install-root}%{bindir}" sign-file
