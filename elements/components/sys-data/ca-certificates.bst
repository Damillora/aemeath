kind: manual

# Use certificates from NSS sources
(@):
- elements/sources/nss.yml

build-depends:
- components/buildsystems/minimal.bst
- components/security-tools/make-ca.bst

config:
  install-commands:
  - |
    env DESTDIR="%{install-root}" make-ca -C nss/lib/ckfw/builtins/certdata.txt
