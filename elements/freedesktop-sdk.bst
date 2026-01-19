kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: "freedesktop-sdk-%{sdk-version}*"
  ref: freedesktop-sdk-25.08.6-0-g969f986893cc354ae714ec8c460f693e29ea97b0

config:
  overrides:
    components/linux.bst: components/core/linux.bst
    components/systemd-base.bst: components/core/systemd-base.bst
    components/systemd.bst: components/core/systemd.bst
    components/systemd-ukify.bst: components/core/systemd-ukify.bst
    components/systemd-libs.bst: components/core/systemd-libs.bst
