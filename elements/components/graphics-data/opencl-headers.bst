kind: manual

depends:
- components/platform/minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    mkdir --parents %{install-root}%{includedir}
    cp -r CL/ %{install-root}%{includedir}

sources:
- kind: git_repo
  url: github:KhronosGroup/OpenCL-Headers.git
  ref: 0d5f18c6e7196863bc1557a693f1509adfcee056