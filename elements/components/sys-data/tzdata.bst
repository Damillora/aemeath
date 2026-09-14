kind: make

build-depends:
- components/buildsystems/minimal.bst

variables:
  make-args: >-
    PREFIX="%{prefix}" CC=gcc ZFLAGS='-b fat'

config:
  install-commands:
    (>):
    # We're really only interested in the timezone data
    - |
      rm -rf "%{install-root}%{bindir}"
    - |
      rm -rf "%{install-root}/etc"
    - |
      rm -rf "%{install-root}%{libdir}"
    - |
      rm -rf "%{install-root}%{prefix}/sbin"

    - |
      rm -rf "%{install-root}%{mandir}"

    - |
      mkdir -p "%{install-root}%{sysconfdir}"
    - |
      ln -sf "%{datadir}/zoneinfo/UTC" "%{install-root}%{sysconfdir}/localtime"

sources:
- kind: git_repo
  url: github:eggert/tz.git
  track: 20*
  ref: 2026d-0-gd633fe7ed3de8e00ce7cac991376a064a1373bb1
  version-guess-pattern: '^\d{4}[a-z]'
