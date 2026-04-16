kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: "freedesktop-sdk-%{sdk-version}*"
  ref: freedesktop-sdk-25.08.9-0-g3361ede6aa02d79d2861e9c8782c799ab07d1cea

config:
  overrides:
    components/linux-module-cert.bst: components/boot/linux-module-cert.bst
