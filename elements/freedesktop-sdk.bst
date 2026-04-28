kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: "freedesktop-sdk-%{sdk-version}*"
  ref: freedesktop-sdk-25.08.10-0-g02537fca9b7abe024f9413cb4a8bc2a4f988949c

config:
  overrides:
    components/linux-module-cert.bst: components/boot/linux-module-cert.bst
