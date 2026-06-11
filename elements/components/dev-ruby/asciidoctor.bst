kind: manual

depends:
- components/buildsystems/minimal.bst
- components/dev-lang/ruby.bst

variables:
  strip-binaries: ''

config:
  build-commands:
  - |
    gem build

  install-commands:
  - |
    gemdir=$(gem environment gemdir)
    gem install asciidoctor-*.gem --install-dir "%{install-root}${gemdir}"
    mkdir -p "%{install-root}%{bindir}"
    ln -sr "%{install-root}${gemdir}/bin/asciidoctor" "%{install-root}%{bindir}/asciidoctor"

sources:
- kind: git_repo
  url: github:asciidoctor/asciidoctor.git
  track: v*.*.*
  ref: v2.0.26-0-g0b99b39c9df884d4aec13bba45f03cdbab505769
