kind: make

(@):
- elements/sources/libaio.yml

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

