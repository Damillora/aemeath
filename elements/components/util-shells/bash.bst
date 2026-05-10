kind: autotools

(@):
- elements/sources/bash.yml

build-depends:
- bootstrap/platforms/autotools.bst
- components/sys-devel/binutils.bst
- components/sys-devel/gcc.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/readline.bst

variables:
  conf-local: >-
    --with-installed-readline
    --without-bash-malloc

config:
  install-commands:
    (>):
    - ln -sv bash %{install-root}%{bindir}/sh
    #- rm "%{install-root}/usr/share/info/dir"