kind: script

build-depends:
- binary-seed.bst

config:
  commands:
    - |
      mkdir -pv %{install-root}{%{sysconfdir},%{localstatedir},%{bindir},%{libdir}}

      ln -sv %{bindir} %{install-root}/bin
      ln -sv %{libdir} %{install-root}/lib
      ln -sv %{bindir} %{install-root}/sbin
