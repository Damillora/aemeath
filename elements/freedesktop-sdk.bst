kind: junction

sources:
  - kind: git_repo
    url: gitlab:freedesktop-sdk/freedesktop-sdk.git
    track: "freedesktop-sdk-%{sdk-version}*"
    ref: 969f986893cc354ae714ec8c460f693e29ea97b0

config:
  overrides:
    vm/boot/efi-secure/signed-modules.bst: os/boot/signed-modules.bst
