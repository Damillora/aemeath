kind: meson

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/libxcrypt.bst

build-depends:
- components/buildsystems/meson.bst
- components/sys-devel/flex.bst


variables:
  meson-local: >-
    -Dpam_lastlog=enabled
    -Dexamples=false
    -Dlogind=disabled
    -Dnis=disabled
    -Dselinux=disabled
    -Ddocs=disabled
    -Delogind=disabled
    -Dpwaccess=disabled

config:
  install-commands:
    (>):
    - rm -rf "%{install-root}/var/run"

public:
  initial-script:
    script: |
      #!/bin/bash
      sysroot="${1}"
      file="${sysroot}%{bindir}/unix_chkpwd"
      if [ -f "$file" ]; then
          chmod 4755 "$file"
      fi
  cpe:
    product: linux-pam

sources:
- kind: git_repo
  url: github:linux-pam/linux-pam.git
  track: v*
  ref: v1.7.2-0-gfe03a10115c082a8486ccbab7462139d7e4bb067
