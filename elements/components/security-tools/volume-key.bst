kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/swig.bst
- components/dev-python3/setuptools.bst

depends:
- components/util-libs/glib.bst
- components/filesystem-util/cryptsetup.bst
- components/security-libs/gpgme.bst
- components/security-libs/nss.bst
- components/dev-lang/python3.bst

variables:
  conf-local: >-
    --without-python
    --with-python3

sources:
- kind: git_repo
  url: aemeath_mirror:volume_key.git
  track: volume_key-*
  ref: volume_key-0.3.12-0-gf56614199726ba1897d8687f0927535693b6603f
