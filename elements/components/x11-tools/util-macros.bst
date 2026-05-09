kind: autotools

build-depends:
- components/buildsystems/autotools.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/util/macros.git
  track: util-macros-*
  ref: util-macros-1.20.2-0-ga9d71e3fd8e6758b70be31c586921bbbcd2a8449
