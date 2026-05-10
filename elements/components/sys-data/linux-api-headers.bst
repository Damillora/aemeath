kind: manual

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/linux-headers.yml

build-depends:

- bootstrap/filesystem.bst
- bootstrap/binutils-stage2.bst
- bootstrap/gcc-stage2.bst
- bootstrap/coreutils.bst
- bootstrap/make.bst
- bootstrap/grep.bst
- bootstrap/bash.bst
- bootstrap/sed.bst
- bootstrap/diffutils.bst
- bootstrap/findutils.bst
- bootstrap/gawk.bst
- bootstrap/gzip.bst

config:
  install-commands:
    - |
      make mrproper
      make headers
      find usr/include -type f ! -name '*.h' -delete
      mkdir -p %{install-root}%{prefix}
      cp -rv usr/include %{install-root}%{prefix}

public:
  bst:
    overlap-whitelist:
    # New headers conflict with old linux-api-headers used by bootstrap glibc.
    # Unsure whether to separate this to its own component
    - "%{includedir}/**"