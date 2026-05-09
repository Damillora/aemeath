# Production boot keys, pass -o prod_keys true to use after
# generating
kind: import

config:
  target: /boot-keys

sources:
- kind: local
  path: files/boot-keys/PK.key
- kind: local
  path: files/boot-keys/PK.crt
- kind: local
  path: files/boot-keys/KEK.key
- kind: local
  path: files/boot-keys/KEK.crt
- kind: local
  path: files/boot-keys/DB.key
- kind: local
  path: files/boot-keys/DB.crt
- kind: local
  path: files/boot-keys/VENDOR.crt
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/linux-module-cert.crt
- kind: local
  path: files/boot-keys/linux-module-cert.key
- kind: local
  path: files/boot-keys/extra-kek
  directory: extra-kek
- kind: local
  path: files/boot-keys/extra-db
  directory: extra-db
