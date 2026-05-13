kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

config:
  install-commands:
    (>):
    - |
      mkdir -p "%{install-root}%{bindir}"
      while read -r target link; do
        ln -srf "%{install-root}%{prefix}/$target" "%{install-root}%{prefix}/$link"
      done < "%{build-dir}/user_facing_tool_links.txt"

    - |
      cd "%{install-root}%{libdir}/qt6/bin"
      for f in qtdiag; do
        if [ -f "$f" ] && [ -f "${f}6" ]; then
          ln -sf "${f}6" "$f"
        fi
      done

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qttools-everywhere-src-%{qt6-version}.tar.xz'
  ref: 8e61835a679c93fa9c6065b142353c2071ba68e297898937c32a03777fcaf50d

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/pixeltools6'
        - '%{bindir}/qtdiag6'
        - '%{bindir}/qtplugininfo6'
