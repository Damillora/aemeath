kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/filesystem-libs/fuse3.bst

sources:
- kind: git_repo
  url: github:containers/fuse-overlayfs.git
  track: v*
  ref: v1.18-0-g899cdaab386dc37b3dddc1c5d9cc3c093960e7cd
