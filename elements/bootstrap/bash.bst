kind: autotools

(@):
- elements/bootstrap/include/vars.yml
- elements/sources/bash.yml

build-depends:
- binary-seed.bst
- bootstrap/binutils-stage1.bst
- bootstrap/gcc-stage1.bst
- filename:
  - bootstrap/linux-api-headers.bst
  - bootstrap/glibc.bst
  config:
    location: "%{bootstrap-sysroot}"

runtime-depends:
- bootstrap/glibc.bst

variables:
   conf-local: >-
     --host=%{bootstrap-triplet}
     --build=$(./config.guess)
     --without-bash-malloc

config:
  install-commands:
    (>):
    - ln -sv bash %{install-root}%{bindir}/sh
    - rm "%{install-root}/usr/share/info/dir"