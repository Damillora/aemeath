kind: filter

build-depends:
- components/freedesktop/appstream.bst

runtime-depends:
- freedesktop-sdk.bst:components/appstream.bst

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
