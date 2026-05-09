kind: manual

(@):
- elements/sources/boost.yml

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

environment:
  MAX_JOBS: '%{max-jobs}'
environment-nocache:
- MAX_JOBS

config:
  build-commands:
  - |
    ./bootstrap.sh --prefix="%{prefix}" --libdir="%{lib}" --with-python=python3
    ./b2 stage -j"$MAX_JOBS" threading=multi link=shared

  install-commands:
  - |
    ./b2 --prefix=%{install-root}%{prefix} --libdir="%{lib}" install threading=multi link=shared
