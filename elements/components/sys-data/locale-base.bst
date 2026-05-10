kind: script

build-depends:
- bootstrap/platforms/minimal.bst
- components/sys-libs/glibc.bst

environment:
  LC_ALL: C

config:
  commands:
  - |
     mkdir -p %{install-root}/usr/lib/locale

  - |
    localedef --prefix=%{install-root} --no-archive -i C -f UTF-8 C.UTF-8
    localedef --prefix=%{install-root} --no-archive -i en_US -f ISO-8859-1 en_US
    localedef --prefix=%{install-root} --no-archive -i en_US -f UTF-8 en_US.UTF-8