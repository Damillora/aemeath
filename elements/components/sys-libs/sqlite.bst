kind: autotools

build-depends:
- components/buildsystems/minimal.bst
- components/dev-lang/tcl.bst
- components/sys-data/locale-base.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/zlib-ng.bst
- components/sys-libs/readline.bst


variables:
  conf-args: >-
    --prefix=%{prefix}
    --fts4
    --fts5
    --disable-static
    CFLAGS="${CFLAGS}
    -DSQLITE_ENABLE_COLUMN_METADATA=1
    -DSQLITE_SECURE_DELETE=1
    -DSQLITE_ENABLE_UNLOCK_NOTIFY=1
    -DSQLITE_ENABLE_DBSTAT_VTAB=1"

  make-args: >-
    LDFLAGS.rpath=""

public:
  cpe:
    vendor: 'sqlite'

sources:
- kind: git_repo
  url: github:sqlite/sqlite.git
  track: version-*
  exclude:
  - "version-3.52.0"
  ref: version-3.53.1-0-gccd445d76a9362c63add000354fac84ba9022176
