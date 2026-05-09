kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  meson-local: >-
    -Ddistro_install=true

sources:
- kind: git_repo
  url: github:benhoyt/inih.git
  track: r*
  ref: r62-0-g26254ee9de7681f8825433415443e7116ff24b98
  version-guess-pattern: '(?<=r)\d{2}'
