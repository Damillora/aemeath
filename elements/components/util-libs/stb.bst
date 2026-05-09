kind: manual

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

config:
  install-commands:
  - |
    install -Dm 644 *.{c,h} -t "%{install-root}/usr/include/stb/"

sources:
- kind: git_repo
  url: github:nothings/stb.git
  track: 'master'
  ref: 31c1ad37456438565541f4919958214b6e762fb4
