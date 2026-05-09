kind: autotools

(@):
- elements/sources/cpio.yml

build-depends:
- components/buildsystems/autotools.bst
- components/sys-devel/bison.bst
- components/dev-tools/texinfo.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/util-archive/tar.bst

variables:
  autogen: ./bootstrap --skip-po --no-git --gnulib-srcdir=%{build-root}/gnulib
  local_flags: -std=gnu17
  conf-local: >-
    --with-rmt="%{libexecdir}/rmt"
  make-args: >-
    MAKEINFO=true

config:
  configure-commands:
    (<):
    - |
      sed -e "/^extern int (\*xstat)/s/()/(const char * restrict,  struct stat * restrict)/" \
          -i src/extern.h
    - |
      sed -e "/^int (\*xstat)/s/()/(const char * restrict,  struct stat * restrict)/" \
          -i src/global.c
  install-commands:
    (>):
    # man8 is empty and this causes issue with compose element.
    - rm -rf "%{install-root}%{mandir}/man8"
    - rm "%{install-root}/usr/share/info/dir"

public:
  cpe:
    ignored:
    - CVE-2010-4226
