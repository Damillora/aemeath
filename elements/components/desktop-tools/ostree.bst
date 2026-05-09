kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/util-sys/which.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-tools/gobject-introspection.bst
- components/sys-devel/bison.bst
- components/sys-services/systemd.bst

depends:
- components/filesystem-util/composefs.bst
- components/net-libs/curl.bst
- components/util-libs/glib.bst
- components/security-libs/gpgme.bst
- components/filesystem-util/e2fsprogs.bst
- components/filesystem-libs/fuse3.bst
- components/sys-libs/systemd-libs.bst
- components/util-libs/libarchive.bst
- components/net-services/avahi.bst
- components/net-libs/avahi-libs.bst
- components/security-tools/gnupg.bst

variables:
  conf-local: >-
    --with-dracut
    --with-libsystemd
    --with-systemd
    --with-libarchive
    --with-avahi
    --with-curl
    --without-soup

public:
  bst:
    split-rules:
      devel:
        (>):
        - "%{libdir}/libostree.so"

sources:
- kind: git_repo
  url: github:ostreedev/ostree.git
  track: v*
  exclude:
  - v*.*.*
  ref: v2026.1-0-g84fcfe17adcc69b926e8205782c1f735c09bfdd9
- kind: git_module
  path: libglnx
  url: gnome:libglnx.git
  ref: b415d046880d585e5161bf230590543adeea4fe6
- kind: git_module
  path: bsdiff
  url: github:mendsley/bsdiff.git
  ref: b817e9491cf7b8699c8462ef9e2657ca4ccd7667
