kind: import

sources:
- kind: local
  path: files/sysupdate/fdsdk-usr.transfer
- kind: local
  path: files/sysupdate/fdsdk-usr-verity.transfer
- kind: local
  path: files/sysupdate/fdsdk-kernel.transfer

config:
  target: /usr/lib/sysupdate.d
