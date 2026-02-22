# Production boot keys, pass -o prod_keys true to use after
# generating
kind: import

config:
  target: /boot-keys

sources:
- kind: local
  path: files/boot-keys-test/PK.key
- kind: local
  path: files/boot-keys-test/PK.crt
- kind: local
  path: files/boot-keys-test/KEK.key
- kind: local
  path: files/boot-keys-test/KEK.crt
- kind: local
  path: files/boot-keys-test/DB.key
- kind: local
  path: files/boot-keys-test/DB.crt
- kind: local
  path: files/boot-keys-test/VENDOR.crt
- kind: local
  path: files/boot-keys-test/VENDOR.key
- kind: local
  path: files/boot-keys-test/linux-module-cert.crt
- kind: local
  path: files/boot-keys-test/linux-module-cert.key
- kind: local
  path: files/boot-keys/extra-kek
  directory: extra-kek
- kind: local
  path: files/boot-keys/extra-db
  directory: extra-db
