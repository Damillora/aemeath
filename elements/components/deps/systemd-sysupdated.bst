kind: filter

build-depends:
- components/freedesktop/systemd-base.bst

runtime-depends:
- freedesktop-sdk.bst:components/systemd-manifest.bst

config:
  include:
  - systemd-sysupdated
  include-orphans: false

public:
  bst:
    overlap-whitelist:
    - "%{project_licensedir}/systemd"
    - "%{project_licensedir}/systemd/**"
