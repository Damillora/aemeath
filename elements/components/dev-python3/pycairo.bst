kind: meson

build-depends:
- components/buildsystems/meson.bst

depends:
- components/graphics-libs/cairo.bst
- components/dev-lang/python3.bst

sources:
- kind: git_repo
  url: github:pygobject/pycairo.git
  track: v*
  ref-format: git-describe
  ref: v1.29.0-0-gf2c40870be2d5e9d15ecee339e1d5e30d82c7959
