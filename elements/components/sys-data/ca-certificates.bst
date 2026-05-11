kind: manual

build-depends:
- components/platform/minimal.bst
- components/security-tools/make-ca.bst

config:
  install-commands:
  - |
    env DESTDIR="%{install-root}" make-ca -C certdata.txt

sources:
- kind: remote
  url: mozilla_hg:projects/nss/raw-file/tip/lib/ckfw/builtins/certdata.txt
  ref: 77130ef91213772844561fbd3aa31d413b25c2ac7f576fea3bc3bbff7ef93489
