kind: make

build-depends:
- components/buildsystems/minimal.bst
- components/sys-devel/bison.bst
- components/sys-devel/flex.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  make-args: PREFIX="%{prefix}" LIBDIR="%{libdir}" SBINDIR="%{sbindir}" MANDIR="%{mandir}"

sources:
- kind: git_repo
  url: github:hramrach/lm-sensors.git
  track: 'V*'
  ref: V3-6-2-0-g5c3ba50f806dea27c3b1e368966191c735459111
