kind: manual

build-depends:
- components/buildsystems/minimal.bst

config:
  build-commands:
  - |
    for i in *.in; do
      m4 \
      -D__AEMEATH_VERSION__="%{image-version}" \
      "${i}" >"$(basename "${i}" .in)"
    done

  install-commands:
  - |
    mkdir -p "%{install-root}%{libdir}"
    install os-release "%{install-root}%{libdir}"
    mkdir -p "%{install-root}%{sysconfdir}"
    ln -s "$(realpath --relative-to="%{install-root}%{sysconfdir}" "%{install-root}%{libdir}/os-release")" %{install-root}%{sysconfdir}/os-release

sources:
- kind: local
  path: files/os-release
