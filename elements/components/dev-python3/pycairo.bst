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
  ref: v1.29.1-0-g08960e57e952f5b4651e67f8c2680137f8724cd2
