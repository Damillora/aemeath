kind: import

sources:
- kind: local
  path: files/sysupdate/aemeath-usr.transfer
- kind: local
  path: files/sysupdate/aemeath-usr-verity.transfer
- kind: local
  path: files/sysupdate/aemeath-kernel.transfer
- kind: local
  path: files/sysupdate/aemeath-sdk.feature
- kind: local
  path: files/sysupdate/aemeath-sdk.transfer

config:
  target: /usr/lib/sysupdate.d
