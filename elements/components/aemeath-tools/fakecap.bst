kind: manual

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/libcap.bst

config:
  build-commands:
  - |
    gcc -fPIC ${CFLAGS} ${LDFLAGS} -Werror -shared fakecap.c -o fakecap.so

  install-commands:
  - |
    install -Dm644 -t '%{install-root}%{libexecdir}/fakecap' fakecap.so

sources:
- kind: local
  path: files/fakecap
