kind: make

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  make-args: >-
    prefix="%{prefix}"
    exec_prefix="%{exec_prefix}"
    bindir="%{bindir}"
    datarootdir="%{datadir}"
    docdir="%{docdir}"
    mandir="%{mandir}"

sources:
- kind: git_repo
  url: aemeath_mirror:passt.git
  track: '*_*_*.*'
  ref: 2026_06_11.a9c61ff-0-ga9c61ffaf15347b8dfcc2347c5440e4b0e82333b
