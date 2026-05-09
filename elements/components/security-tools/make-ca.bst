kind: make

build-depends:
- components/buildsystems/minimal.bst
- components/dev-lang/perl.bst

runtime-depends:
- components/sys-libs/openssl.bst
- components/security-libs/p11-kit.bst

variables:
  make-args: >-
    PREFIX="%{prefix}"
    SBINDIR=%{sbindir}

sources:
- kind: git_repo
  url: github:lfs-book/make-ca.git
  track: v*
  ref: v1.16.1-0-gc52f1373f5d91d8d7078fe129ac28664d3bbd941