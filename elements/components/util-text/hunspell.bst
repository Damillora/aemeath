kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/readline.bst
- components/sys-libs/ncurses.bst

variables:
  conf-local: |
    --with-readline \
    --with-ui

sources:
- kind: git_repo
  url: github:hunspell/hunspell.git
  track: v*
  ref: v1.7.3-0-gc5f98152a274e25b5107101104bef632b83a0cc9
