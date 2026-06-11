kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/sys-libs/zlib-ng.bst

variables:
  autogen: |
    cd src
    autopoint -f
    cd m4
    echo EXTRA_DIST = *.m4 > Makefile.am
    cd ..
    autoreconf -f -v -i
    cd ..
  conf-cmd: src/configure
  conf-local: >-
    --disable-static

public:
  bst:
    integration-commands:
    - |
      rm -f "%{datadir}/cracklib/pw_dict"{,.pwd,.pwi}
      "%{sbindir}/create-cracklib-dict" -o "%{datadir}/cracklib/pw_dict" "%{datadir}/cracklib/cracklib-small"

sources:
- kind: git_repo
  url: github:cracklib/cracklib.git
  track: 'v*'
  ref: v2.10.3-0-ge73d5db1789d198b5f9ec44b68b9c775c3e6c042
