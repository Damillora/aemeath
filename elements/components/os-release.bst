kind: manual

build-depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  build-commands:
    - |
      for i in *.in; do
        m4 -D__SDK_VERSION__="%{sdk-version}" \
        -D__AEMEATH_VERSION__="%{aemeath-version}" \
        "${i}" >"$(basename "${i}" .in)"
      done

  install-commands:
    - |
      mkdir -p "%{install-root}%{indep-libdir}"
      install os-release "%{install-root}%{indep-libdir}"
      mkdir -p "%{install-root}%{sysconfdir}"
      ln -s "$(realpath --relative-to="%{install-root}%{sysconfdir}" "%{install-root}%{indep-libdir}/os-release")" %{install-root}%{sysconfdir}/os-release

sources:
  - kind: local
    path: files/os-release
