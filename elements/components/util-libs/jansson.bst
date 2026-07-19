kind: autotools


build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  build-dir: build


sources:
- kind: git_repo
  url: github:akheron/jansson.git
  track: "v*"
  ref: v2.15.1-0-gdbb5fb3636e155fccfce4cd215de752779bd6971
