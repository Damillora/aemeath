kind: autotools

build-depends:
- components/buildsystems/autotools.bst

runtime-depends:
- components/util-shells/bash.bst

sources:
- kind: git_repo
  url: github:scop/bash-completion.git
  track: '*.*'
  ref: 2.18.0-0-gb80d38cce5645fb98acd4eba857843fdf66be570
