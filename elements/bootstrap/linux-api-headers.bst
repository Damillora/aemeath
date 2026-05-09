kind: manual

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/linux-headers.yml

build-depends:
- binary-seed.bst

config:
  install-commands:
    - |
      make mrproper
      make headers
      find usr/include -type f ! -name '*.h' -delete
      mkdir -p %{install-root}%{prefix}
      cp -rv usr/include %{install-root}%{prefix}