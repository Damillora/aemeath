kind: make

(@):
- elements/sources/duktape.yml

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
