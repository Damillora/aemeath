kind: make

(@):
- elements/sources/linux.yml

build-depends:
- components/buildsystems/minimal.bst
- components/sys-devel/bison.bst
- components/sys-devel/flex.bst
- components/dev-lang/python3.bst

depends:
- components/sys-devel/binutils.bst
- components/sys-libs/openssl.bst
- components/sys-libs/libelf.bst

variables:
  command-subdir: tools/bpf
  make-args: >-
    prefix="%{prefix}"
    sbindir="%{bindir}"
    -W runqslower

config:
  build-commands:
    (<):
    - |
      make -C bpftool %{make-args}

  install-commands:
    (>):
    - |
      mv "%{install-root}%{prefix}/sbin"/* "%{install-root}%{bindir}/"
      rmdir "%{install-root}%{prefix}/sbin"
