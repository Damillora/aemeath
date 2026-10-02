kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/libpng-config'
        - '%{bindir}/libpng16-config'

sources:
- kind: git_repo
  url: github:pnggroup/libpng.git
  track: v*
  exclude:
  - v*alpha*
  - v*beta*
  ref: v1.6.59-0-gcd952f49f95bb27154ae77dbb103032d95f6e580
