kind: autotools

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
- kind: gnu
  name: groff
  ref:
    suffix: groff/groff-1.24.2.tar.gz
    sha256sum: f9c1efd5bebbe37fc6e1063db7473ce8df1e3e0be4ff0f43ce04fce57e9c5dd9
