kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/graphics-libs/mesa.bst

depends:
- components/x11-libs/xi.bst

sources:
- kind: git_repo
  url: freedesktop:mesa/glu.git
  ref: glu-9.0.3-0-ga2b96c7bba8db8fec3e02fb4227a7f7b02cabad1
