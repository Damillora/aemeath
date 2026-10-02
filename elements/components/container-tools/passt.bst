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
  ref: 2026_09_25.df90211-0-gdf90211db4b08a06ed4e499ffa40bf8811100a2f
