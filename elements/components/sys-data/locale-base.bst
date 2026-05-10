kind: script

build-depends:
- components/sys-libs/glibc.bst
- bootstrap/bash.bst
- bootstrap/coreutils.bst
- bootstrap/gzip.bst

environment:
  LC_ALL: C

config:
  commands:
  - |
     mkdir -p %{install-root}/usr/lib/locale

  - |
    localedef --prefix=%{install-root} --no-archive -i C -f UTF-8 C.UTF-8
    localedef --prefix=%{install-root} --no-archive -i en_US -f ISO-8859-1 en_US