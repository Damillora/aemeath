kind: make

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  make-args: >-
    -f Makefile.sharedlibrary
    INSTALL_PREFIX=%{prefix}
    LIBDIR=/%{lib}

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libduktaped.so'
        - '%{libdir}/libduktape.so'

sources:
- kind: tar
  url: github:svaarala/duktape/releases/download/v%{source-track_duktape}/duktape-%{source-track_duktape}.tar.xz
  ref: 90f8d2fa8b5567c6899830ddef2c03f3c27960b11aca222fa17aa7ac613c2890
- kind: patch
  path: patches/duktape/duktape-lm.patch
