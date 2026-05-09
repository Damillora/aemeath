kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/dev-tools/_private/git-basic.bst
- components/dev-tools/gobject-introspection.bst

depends:
- components/util-libs/glib.bst
- components/dev-python3/pycairo.bst
- components/sys-libs/libffi.bst

variables:
  meson-local: >-
    -Dtests=false

config:
  configure-commands:
    (<):
    - |
      set -eu
      PYCAPI_COMPAT_REV_NEEDED=$(grep '^revision=' %{build-root}/subprojects/pythoncapi-compat.wrap| cut -d'=' -f2)
      PYCAPI_COMPAT_REV_FOUND=$(git -C subprojects/pythoncapi-compat rev-parse HEAD)
      if [ "$PYCAPI_COMPAT_REV_NEEDED" != "$PYCAPI_COMPAT_REV_FOUND" ]; then
        echo "Error: PYCAPI_COMPAT revision mismatch!"
        echo "Needed: $PYCAPI_COMPAT_REV_NEEDED"
        echo "Found:  $PYCAPI_COMPAT_REV_FOUND"
        exit 1
      fi

sources:
- kind: git_repo
  url: gnome:pygobject.git
  track: '*.*[02468].*'
  ref: 3.56.3-0-g57b42b3423227010946db6fd84aad72c734ddf63
- kind: git_repo
  url: github:python/pythoncapi-compat.git
  directory: subprojects/pythoncapi-compat
  ref: 22811c3f0e69908894d2bd724f572b32667f2141
