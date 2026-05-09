kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/util-libs/libunwind.bst

variables:
  conf-local: --enable-mpers=check

public:
  cpe:
    ignored:
    - CVE-2000-0006

sources:
- kind: git_repo
  url: github:strace/strace.git
  track: v*
  ref: v7.1-0-g40bbaa53cfbe65a48ebb503aa208387989228db6
