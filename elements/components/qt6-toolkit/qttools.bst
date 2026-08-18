kind: cmake

(@):
- include/vars/qt6.yml

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
  ref: 9ea75af35c512f7e09e61c8c3af3997f13b4d43bb099cf43fcec470126b4041e

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/pixeltools6'
        - '%{bindir}/qtdiag6'
        - '%{bindir}/qtplugininfo6'
