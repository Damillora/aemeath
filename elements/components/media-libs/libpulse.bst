kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/libtool.bst
- components/dev-tools/m4.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-perl/xml-parser.bst

depends:
- components/util-libs/glib.bst
- components/media-libs/libsndfile.bst

variables:
  meson-local: >-
    -Dalsa=disabled
    -Dasyncns=disabled
    -Davahi=disabled
    -Dbluez5=disabled
    -Dfftw=disabled
    -Ddbus=disabled
    -Dsystemd=disabled
    -Dgtk=disabled
    -Dgstreamer=disabled
    -Djack=disabled
    -Delogind=disabled
    -Dlirc=disabled
    -Dorc=disabled
    -Dsoxr=disabled
    -Dspeex=disabled
    -Dtcpwrap=disabled
    -Dtests=false
    -Dudev=disabled
    -Dwebrtc-aec=disabled
    -Dvalgrind=disabled
    -Dx11=disabled
    -Dbluez5-gstreamer=disabled
    -Ddaemon=false

public:
  cpe:
    product: pulseaudio

sources:
- kind: git_repo
  url: freedesktop:pulseaudio/pulseaudio.git
  track: v*
  exclude:
  - v*.99.*
  ref: v17.0-0-g1f020889c9aa44ea0f63d7222e8c2b62c3f45f68
- kind: patch
  path: patches/pulseaudio/meson-disable-doxygen.patch
