kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-lang/python3.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  conf-local: >-
    --disable-aload
    --disable-alisp
    --disable-old-symbols
    --with-pythonlibs="-lpthread -lm -ldl -lpython3"
    --with-pythonincludes=-I/usr/include/python3
    --with-pcm-plugins=all

sources:
- kind: git_repo
  url: github:alsa-project/alsa-lib.git
  track: "v*"
  ref: v1.2.16.1-0-ga7babcb8e6361719bf18fa96f11354d125447500
