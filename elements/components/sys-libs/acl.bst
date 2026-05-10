kind: autotools

build-depends:
- bootstrap/platforms/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst
- components/sys-libs/gettext.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/attr.bst

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


sources:
- kind: git_repo
  url: savannah:acl.git
  track: v*
  ref: v2.3.2-0-g214c7d146945c31a9dc04cb7094b85053f52a21e
