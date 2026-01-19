kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/appstream.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd.bst

sources:
- kind: git_repo
  url: freedesktop:media-player-info/media-player-info.git
  track: 26
  ref: 26-0-g98e3a24d9be7699c750f435ae9c5d24f7041c7b5
