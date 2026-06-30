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
- kind: git_repo
  url: aemeath_mirror:libaio.git
  track: libaio-*
  ref: libaio-0.3.113-0-g1b18bfafc6a2f7b9fa2c6be77a95afed8b7be448
