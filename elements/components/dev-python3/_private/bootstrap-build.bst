kind: manual

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/dev-lang/python3.bst

config:
  install-commands:
  - |
    LIBDEST=$(python3 -c "import sysconfig; print(sysconfig.get_path('purelib'))")
    mkdir -p $LIBDEST
    install -m 644 -D build.py "%{install-root}${LIBDEST}/build.py"
    python3 -m compileall -o 0 -o 1 -o 2 "%{install-root}${LIBDEST}/build.py"


variables:
  strip-binaries: ''

sources:
- kind: local
  path: files/python-bootstrap/build.py
