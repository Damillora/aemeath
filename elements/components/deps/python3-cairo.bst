kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/cairo.bst

sources:
- kind: git_repo
  url: github:pygobject/pycairo.git
  track: 'v*'
  ref: f2c40870be2d5e9d15ecee339e1d5e30d82c7959
