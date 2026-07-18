kind: manual

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

sources:
- kind: tar
  url: github:boostorg/boost/releases/download/boost-%{source-track_boost}/boost-%{source-track_boost}-b2-nodocs.tar.xz
  ref: 7334bb672b9c7aa135da88bcc3111a64a198be9a7d44eb5151d9248e7cfd43ef
