kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

variables:
  notparallel: true
  make-install-args: >-
    %{make-args} prefix="%{install-root}%{prefix}"  INCLUDEDIR="%{install-root}%{prefix}/include" BINDIR="%{install-root}%{bindir}" LIBDIR="%{install-root}%{libdir}" MANDIR="%{install-root}%{mandir}" install


depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
sources:
- kind: tar
  url: xiph:releases/cdparanoia/cdparanoia-III-10.2.src.tgz
  ref: 005db45ef4ee017f5c32ec124f913a0546e77014266c6a1c50df902a55fe64df
- kind: patch_queue
  path: patches/cdparanoia
