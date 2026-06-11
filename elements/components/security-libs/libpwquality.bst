kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/security-libs/cracklib.bst

variables:
  conf-local: >-
    --with-securedir=/usr/lib/security
    --disable-static
    --disable-python-bindings

sources:
- kind: git_repo
  url: github:libpwquality/libpwquality.git
  track: 'libpwquality-*'
  ref: libpwquality-1.4.5-0-g5490e96a3dd6ed7371435ca5b3ccef98bdb48b5a
