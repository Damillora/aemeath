kind: pyproject

build-depends:
- components/buildsystems/python.bst
- components/dev-tools/pkgconf.bst

depends:
- components/dev-lang/python3.bst
- components/util-archive/zstd.bst

environment:
  ZSTD_EXTERNAL: "1"

sources:
- kind: git_repo
  url: github:sergey-dryabzhinsky/python-zstd.git
  track: 'v*'
  ref: v1.5.7.3-0-gdd209d024f46092474ef1edcced0a5a7574890af
