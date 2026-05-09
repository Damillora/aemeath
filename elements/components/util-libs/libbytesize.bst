kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-devel/mpfr.bst
- components/dev-lang/python3.bst

sources:
- kind: git_repo
  url: github:storaged-project/libbytesize.git
  track: '*.*'
  ref: 2.12-0-g518fd4a0a863e896675a7f5ef0164a36eb4d7b03
