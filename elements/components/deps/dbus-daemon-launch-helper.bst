kind: filter

build-depends:
- components/freedesktop/dbus-base.bst

runtime-depends:
- freedesktop-sdk.bst:components/dbus.bst

config:
  include:
  - dbus-daemon-launch-helper
  include-orphans: false

public:
  initial-script:
    script: |
      #!/bin/bash
      sysroot="${1}"
      chown root:messagebus "${sysroot}%{libexecdir}/dbus-daemon-launch-helper"
      chmod 4755 "${sysroot}%{libexecdir}/dbus-daemon-launch-helper"
