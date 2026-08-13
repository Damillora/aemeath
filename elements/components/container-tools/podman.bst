kind: make

build-depends:
- components/buildsystems/minimal.bst
- components/dev-go/md2man.bst
- components/dev-lang/python3.bst
- components/dev-lang/go.bst
- components/dev-tools/_private/git-basic.bst

depends:
- components/container-data/containers-common.bst
- components/security-libs/gpgme.bst
- components/sys-libs/libseccomp.bst
- components/sys-libs/systemd-libs.bst

runtime-depends:
- components/container-tools/catatonit.bst
- components/container-tools/conmon.bst
- components/container-tools/crun.bst
- components/container-tools/netavark.bst
- components/container-tools/passt.bst
- components/container-tools/fuse-overlayfs.bst
- components/net-tools/iptables.bst

environment:
  MAKEFLAGS: -j1

variables:
  optimize-debug: "false"
  command-subdir: src/github.com/podman-container-tools/podman
  make-args: >-
    PREFIX="%{prefix}"
  make-install-args: >-
    %{make-args}
    DESTDIR="%{install-root}"
    install install.completions

sources:
- kind: git_repo
  url: github:podman-container-tools/podman.git
  directory: src/github.com/podman-container-tools/podman
  track: v*
  exclude:
  - "*rc*"
  ref: v6.1.0-0-gcade97a52ebdf9dbf9e81de8009015776837a074
