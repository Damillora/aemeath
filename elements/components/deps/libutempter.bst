kind: make

sources:
- kind: git_repo
  url: github:altlinux/libutempter.git
  track: '*-alt1'

  ref: 4caa8ab94ff8b207228fa723a89214bf5e929321
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/git.bst

depends:
- aemeath/minimal.bst
- components/deps/libimobiledevice.bst
