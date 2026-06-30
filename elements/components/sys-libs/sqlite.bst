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
  cflags-local: >-
    -DSQLITE_ENABLE_COLUMN_METADATA=1
    -DSQLITE_SECURE_DELETE=1
    -DSQLITE_ENABLE_UNLOCK_NOTIFY=1
    -DSQLITE_ENABLE_DBSTAT_VTAB=1
  conf-args: >-
    --prefix=%{prefix}
    --fts4
    --fts5
    --disable-static
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
  ref: version-3.53.3-0-g92a6c5c3636faa021ecc3be5403a00f50f65eda7
