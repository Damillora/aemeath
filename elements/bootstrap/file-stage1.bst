kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/file.yml

build-depends:
- binary-seed.bst

variables:
  prefix: "%{bootstrap-prefix}"