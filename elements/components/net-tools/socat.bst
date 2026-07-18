kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/openssl.bst
- components/sys-libs/readline.bst

sources:
- kind: tar
  url: dest-unreach:socat/download/socat-%{source-track_socat}.tar.gz
  ref: f68b602c80e94b4b7498d74ec408785536fe33534b39467977a82ab2f7f01ddb
