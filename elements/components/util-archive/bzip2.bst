kind: manual

build-depends:
- bootstrap/platforms/minimal.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

config:
  configure-commands:
  - |
    sed -i 's@\(ln -s -f \)$(PREFIX)/bin/@\1@' Makefile
  - |
    sed -i "s@(PREFIX)/man@(PREFIX)/share/man@g" Makefile
  build-commands:
  - |
    make -f Makefile-libbz2_so
    make clean
  - |
    make

  install-commands:
  - |
    make PREFIX=%{install-root}%{prefix} install
  - |
    mkdir -p %{install-root}%{libdir}
    cp -av libbz2.so.* %{install-root}%{libdir}
    ln -sfv libbz2.so.1.0.8 %{install-root}%{libdir}/libbz2.so
    ln -sfv libbz2.so.1.0.8 %{install-root}%{libdir}/libbz2.so.1

sources:
- kind: git_repo
  url: sourceware:bzip2.git
  track: bzip2-*
  ref: bzip2-1.0.8-0-g6a8690fc8d26c815e798c588f796eabe9d684cf0
