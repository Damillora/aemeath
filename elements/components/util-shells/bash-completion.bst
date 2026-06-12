kind: autotools

build-depends:
- components/buildsystems/autotools.bst

runtime-depends:
- components/util-shells/bash.bst

sources:
- kind: git_repo
  url: github:scop/bash-completion.git
  track: '*.*'
  ref: 2.17.0-0-g47cc2eb87af2f95bc3a6b13ccebe6bd39b1b107a
