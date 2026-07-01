kind: autotools

build-depends:
- bootstrap/platforms/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst
- components/dev-tools/gettext.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
config:
  configure-commands:
    (<):
    - ./autogen.sh --no-po4a --no-doxygen

    # po/en@*.po are generated files. They are not reproducible
    # because of PO-Revision-Date.
    - |
      mkdir tmp-build
      cd tmp-build
      ../configure
      cd po
      make
      cd ../..
      rm -rf tmp-build
      rm po/*.gmo
      sed -i 's/"PO-Revision-Date: .*[\]n"/"PO-Revision-Date: 2011-11-11 11:11+0000\\n"/' po/en@*.po
  install-commands:
    (>):
# Man pages will be provided by Linux's man-pages
    - |
      rm -rf "%{install-root}%{mandir}"

sources:
- kind: git_repo
  url: savannah:attr.git
  track: v*
  ref: v2.6.0-0-gc440855d6b33446edf4b5eb1a2d892281f15a99b
