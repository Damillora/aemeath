kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-lang/python3.bst
- components/desktop-libs/appstream.bst

depends:
- components/sys-services/systemd.bst

sources:
- kind: git_repo
  url: freedesktop:media-player-info/media-player-info.git
  track: 26
  ref: 26-0-g98e3a24d9be7699c750f435ae9c5d24f7041c7b5
