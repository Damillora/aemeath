kind: autotools

(@):
- elements/sources/icu.yml

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
