kind: manual

(@):
- elements/bootstrap/include/vars.yml

build-depends:
- bootstrap/filesystem.bst
- bootstrap/bash.bst
- bootstrap/coreutils.bst
- bootstrap/make.bst
- bootstrap/python3.bst

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
  ref: f83681d04543e3f52d2bd1c7b15b88eb5e401ad4cc564057f8a5863d6e7a8cba
- kind: remote
  url: iana:assignments/protocol-numbers/protocol-numbers.xml
  ref: 59cdd7930cd6152bd11713b8883503511fffb2add72345d21d043cecb969803b
- kind: local
  path: files/iana-etc
