kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/filesystem-libs/fuse3.bst

sources:
- kind: git_repo
  url: github:containers/fuse-overlayfs.git
  track: v*
  ref: v1.17-0-gefcfefa8032f27dfe922d1f75c4500b2dfc938f7
