kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst

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
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qttools-everywhere-src-%{qt6-track}.tar.xz'
  ref: 8e61835a679c93fa9c6065b142353c2071ba68e297898937c32a03777fcaf50d

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/pixeltools6'
        - '%{bindir}/qtdiag6'
        - '%{bindir}/qtplugininfo6'
