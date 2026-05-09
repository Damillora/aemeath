kind: autotools

(@):
- elements/sources/socat.yml

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/openssl.bst
- components/sys-libs/readline.bst
