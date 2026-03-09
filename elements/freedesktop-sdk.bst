kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: "freedesktop-sdk-%{sdk-version}*"
  ref: freedesktop-sdk-25.08.8-0-gd3387a9ae68e2781dfcc9b4f587e3c52d28a4364

config:
  overrides:
    components/linux-module-cert.bst: components/boot/linux-module-cert.bst
