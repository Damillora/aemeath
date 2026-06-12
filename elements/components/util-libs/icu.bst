kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-lang/python3.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  build-dir: build

config:
  configure-commands:
  - |
    mkdir "%{build-dir}"
    cd "%{build-dir}"
    ../source/configure %{conf-args}

public:
  cpe:
    product: international_components_for_unicode

# The git repsitory is unreliable as tags are force-pushed
# See https://github.com/sdispater/tomlkit/issues/322
sources:
- kind: tar
  url: github:unicode-org/icu/releases/download/release-78.3/icu4c-78.3-sources.tgz
  ref: 3a2e7a47604ba702f345878308e6fefeca612ee895cf4a5f222e7955fabfe0c0
  version-guess-pattern: '(\d+)_(\d+)'
