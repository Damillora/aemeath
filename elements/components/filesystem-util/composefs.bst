kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-go/md2man.bst

depends:
- components/filesystem-libs/fuse3.bst
- components/sys-libs/openssl.bst

config:
  install-commands:
    (>):
    - find "%{install-root}" -name "lib*.a" -delete

sources:
- kind: git_repo
  url: github:containers/composefs.git
  track: v*
  ref: v1.0.8-0-g858ce1b38e1534c2602eb431124b5dca706bc746
