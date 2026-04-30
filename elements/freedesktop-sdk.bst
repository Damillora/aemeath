kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: "freedesktop-sdk-%{sdk-version}*"
  ref: freedesktop-sdk-25.08.11-0-g30517eb37d146e6dcfa1b0e9337ff835e3473ee5

config:
  overrides:
    components/linux-module-cert.bst: components/boot/linux-module-cert.bst
