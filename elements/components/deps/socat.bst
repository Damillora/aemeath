kind: autotools

sources:
- kind: tar
  url: http://www.dest-unreach.org/socat/download/socat-1.8.1.0.tar.gz
  ref: 9a884880b1b00dfb2ffc6959197b1554b200af731018174cd048115dc28ef239

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:bootstrap/readline.bst
