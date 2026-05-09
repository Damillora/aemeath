kind: filter

build-depends:
- components/desktop-services/_private/xdg-desktop-portal-base.bst

config:
  include:
  - interfaces
  include-orphans: False

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/pw-config'
