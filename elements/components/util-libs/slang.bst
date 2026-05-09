kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

environment:
  MAX_JOBS: '1'
environment-nocache:
- MAX_JOBS

sources:
- kind: tar
  url: jedsoft:releases/slang/slang-2.3.3.tar.bz2
  ref: f9145054ae131973c61208ea82486d5dd10e3c5cdad23b7c4a0617743c8f5a18
