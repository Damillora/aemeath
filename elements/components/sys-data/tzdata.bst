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
  ref: 2026c-0-g71f28b9ab3b67c0f9466803f6151812d4fc8e357
  version-guess-pattern: '^\d{4}[a-z]'
