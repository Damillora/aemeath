kind: manual

(@):
- elements/bootstrap/include/vars.yml

build-depends:
- components/buildsystems/minimal.bst
- components/dev-lang/python3.bst

config:
  build-commands:
  - |
    python3 generate.py .
  install-commands:
  - |
    mkdir -p %{install-root}%{sysconfdir}
    install -D -m644 -t "%{install-root}%{sysconfdir}" protocols services

sources:
- kind: remote
  url: iana:assignments/service-names-port-numbers/service-names-port-numbers.xml
  ref: b2fb1a020485ec869cc35020e090d457195910556bc69ac65140621178bc83a3
- kind: remote
  url: iana:assignments/protocol-numbers/protocol-numbers.xml
  ref: 59cdd7930cd6152bd11713b8883503511fffb2add72345d21d043cecb969803b
- kind: local
  path: files/iana-etc
