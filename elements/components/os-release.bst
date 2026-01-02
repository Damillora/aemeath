kind: meson

build-depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Daemeath-version='%{aemeath-version}'
    -Dsdk-version='%{sdk-version}'
    -Dfull-version='%{full-version}'

sources:
  - kind: local
    path: files/os-release
