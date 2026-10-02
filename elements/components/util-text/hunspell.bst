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
  ref: v1.7.4-0-g92aa34b3f378ec115562fb06bd1728d566a339ec
