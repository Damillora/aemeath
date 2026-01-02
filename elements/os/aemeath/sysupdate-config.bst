kind: import

sources:
- kind: local
  path: files/sysupdate/fdsdk-usr.conf
- kind: local
  path: files/sysupdate/fdsdk-usr-verity.conf
- kind: local
  path: files/sysupdate/fdsdk-kernel.conf

config:
  target: /usr/lib/sysupdate.d
