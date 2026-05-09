kind: autotools

build-depends:
- components/buildsystems/autotools.bst

variables:
  autogen: ./autogen.sh --no-configure

sources:
- kind: git_repo
  url: freedesktop:xdg/default-icon-theme.git
  track: '[0-9]*.*'
  ref: 0.17-0-gf522d9d0bb08c395ccc1a140bf693a9e239ef61e
