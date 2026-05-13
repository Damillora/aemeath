kind: autotools

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

public:
  cpe:
    ignored:
    - CVE-2010-4226

sources:
- kind: git_repo
  url: savannah:cpio.git
  track: v*
  ref: v2.15-0-g900bab656ff24db5e3099941fb909c79c07962ed
- kind: git_module
  url: savannah:paxutils.git
  path: paxutils
  ref: 9ad2a83e9c8de70d83dbe956c144be51f66a9abb
- kind: git_module
  url: savannah:gnulib.git
  path: gnulib
  ref: 29d705ead11382c8d608dcc254394439cb43b9b8
