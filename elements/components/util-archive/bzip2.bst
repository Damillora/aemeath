kind: manual

build-depends:
- bootstrap/platforms/minimal.bst

depends:
- components/sys-toolchain/glibc.bst

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
    cp -av libbz2.so.* %{libdir}
    ln -sfv libbz2.so.1.0.8 %{libdir}/libbz2.so
    ln -sfv libbz2.so.1.0.8 %{libdir}/libbz2.so.1

sources:
- kind: git_repo
  url: sourceware:bzip2.git
  track: bzip2-*
  ref: bzip2-1.0.8-0-g6a8690fc8d26c815e798c588f796eabe9d684cf0
