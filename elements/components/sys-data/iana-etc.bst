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
  ref: a2116bb24a775789f13e71760d9436a28ff17a02225e2ea46f7adbae7a96581a
- kind: remote
  url: iana:assignments/protocol-numbers/protocol-numbers.xml
  ref: 59cdd7930cd6152bd11713b8883503511fffb2add72345d21d043cecb969803b
- kind: local
  path: files/iana-etc
