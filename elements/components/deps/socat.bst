kind: autotools

sources:
- kind: git_repo
  url: git://repo.or.cz/socat.git
  track: tag-1.*
  ref: tag-1.8.1.0-0-g8834d6cc7e0d7b04cd31f9f7d0cb3e06913b0323

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:bootstrap/readline.bst
