kind: make

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

environment:
  # https://sourceforge.net/p/gnu-efi/bugs/33/
  LDFLAGS: "-z relro -z now --as-needed"

variables:
  # gnu-efi requires disabling of the stack protector.
  target_flags_stack_protector_strong: ''
  make-args: >-
    INSTALLROOT='%{install-root}'
    LIBDIR='%{libdir}'
    PREFIX='%{prefix}'

sources:
- kind: git_repo
  url: github:ncroxon/gnu-efi.git
  track: '*.*.*'
  ref: 4.0.4-0-g37cd8f069bde6715eebdc5e38a8f15ee6de5edcf
