kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- aemeath/minimal.bst

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
  url: https://archives.boost.io/release/1.89.0/source/boost_1_89_0.tar.bz2
  ref: 85a33fa22621b4f314f8e85e1a5e2a9363d22e4f4992925d4bb3bc631b5a0c7a
