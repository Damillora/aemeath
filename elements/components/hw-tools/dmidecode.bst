kind: make

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  make-args: >-
    prefix="%{prefix}"
    sbindir="%{sbindir}"
    mandir="%{mandir}"

sources:
- kind: git_repo
  url: savannah:dmidecode.git
  track: dmidecode-*
  ref: dmidecode-3-7-0-g21a2ee3ff73e71875d171ed1b9b851afa27aa90b
