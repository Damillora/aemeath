kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  build-commands:
  - |
    ./bootstrap.sh --prefix="%{prefix}" --libdir="%{lib}" --with-python=python3
    ./b2 stage -j%{max-jobs} threading=multi link=shared

  install-commands:
  - |
    ./b2 --prefix=%{install-root}%{prefix} --libdir="%{lib}" install threading=multi link=shared

sources:
- kind: tar
  url: boost:release/1.90.0/source/boost_1_90_0.tar.bz2
  ref: 49551aff3b22cbc5c5a9ed3dbc92f0e23ea50a0f7325b0d198b705e8ee3fc305
