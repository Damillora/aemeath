kind: import

sources:
- kind: local
  path: files/systemd-preset-all/global-preset-all.service

config:
  target: '%{libdir}/systemd/system'
