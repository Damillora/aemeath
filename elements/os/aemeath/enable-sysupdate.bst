kind: stack

depends:
- freedesktop-sdk.bst:components/systemd.bst

public:
  bst:
    integration-commands:
    - rm '%{indep-libdir}/systemd/system-preset/90-sysupdate.preset'
