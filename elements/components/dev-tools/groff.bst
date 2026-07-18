kind: autotools

(@):
- elements/sources/groff.yml

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/texinfo.bst

depends:
- components/dev-lang/perl.bst

config:
  build-commands:
    (<):
      # This is a workaround for a bug with parallel builds.
    - |
      cd "%{build-dir}"
      make -j1 arch/misc

  install-commands:
    (>):
    - |
      rm "%{install-root}%{infodir}/dir"

sources:
- kind: tar
  url: gnu:groff/groff-%{source-track_groff}.tar.gz
  ref: 74e2819795b6aff431aeac983d63a9c8968eeaba2a2eba7df8ba4c7b41e7cfd8
