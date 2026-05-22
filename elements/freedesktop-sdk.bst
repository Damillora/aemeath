kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: "freedesktop-sdk-%{sdk-version}*"
  ref: freedesktop-sdk-25.08.12-0-gbb510d9021f4def1a60f032bef1e0ca660b8ec3a

config:
  overrides:
    components/linux-module-cert.bst: components/boot/linux-module-cert.bst
