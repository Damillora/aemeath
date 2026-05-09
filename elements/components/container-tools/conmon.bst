kind: make

build-depends:
- components/buildsystems/minimal.bst
- components/dev-go/md2man.bst
- components/dev-tools/_private/git-basic.bst
- components/sys-services/systemd.bst

depends:
- components/util-libs/glib.bst
- components/sys-libs/libseccomp.bst
- components/sys-libs/systemd-libs.bst

variables:
  optimize-debug: "false"
  command-subdir: src/github.com/containers/conmon

sources:
- kind: git_repo
  url: github:containers/conmon.git
  directory: src/github.com/containers/conmon
  track: v*
  ref: v2.2.1-0-gc8cc2c4db27531bd4e084ce7857f73cd21ee639d
