kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

sources:
- kind: git_repo
  url: github:rpm-software-management/popt.git
  track: popt-*-release
  ref: popt-1.19-release-0-g916e61045d268f7e37ade5ec047eb77e8299e6ad
