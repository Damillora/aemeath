kind: manual

(@):
- elements/sources/go.yml

build-depends:
- components/buildsystems/minimal.bst
- components/dev-lang/_private/go-bin.bst

variables:
  optimize-debug: "false"

environment:
  GOROOT_BOOTSTRAP: '%{libdir}/go'
  GOARCH: "%{go-arch}"
  GOHOSTARCH: "%{go-arch}"
  CGO_ENABLED: '1'

config:
  build-commands:
  - |
    cd src
    bash make.bash

  install-commands:
  - |
    install -Dm755 -t "%{install-root}%{libdir}/go" VERSION
    install -Dm755 -t "%{install-root}%{libdir}/go" go.env
    install -Dm755 -t "%{install-root}%{libdir}/go/bin" bin/*

    mkdir -p "%{install-root}%{libdir}/go/pkg"
    for i in pkg/include pkg/tool; do
      cp -r "${i}" "%{install-root}%{libdir}/go/pkg/"
    done

    for i in api misc src test; do
      cp -r "${i}" "%{install-root}%{libdir}/go/"
    done

  - |
    chmod -x "%{install-root}%{libdir}/go/src/runtime/pprof/testdata"/test*

  - |
    mkdir -p "%{install-root}%{bindir}/"
    for i in "%{install-root}%{libdir}/go/bin"/*; do
      ln -sr "${i}" "%{install-root}%{bindir}/"
    done

  - |
    find "%{install-root}%{libdir}/go/src" -perm -111 -type f -exec chmod 0644 {} ";"

  - |
    rm -vf "%{install-root}%{libdir}/go/src/debug/elf/testdata/libtiffxx.so_"

public:
  bst:
    split-rules:
      devel:
        (>):
        - "%{libdir}/go/src/**"
        - "%{libdir}/go/src"
