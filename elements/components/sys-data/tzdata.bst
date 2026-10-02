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
  ref: 2026e-0-g039ef27cc5f062a2055cb67435d6d71adbefd27d
  version-guess-pattern: '^\d{4}[a-z]'
