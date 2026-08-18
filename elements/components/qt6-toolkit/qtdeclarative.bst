kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst
- components/dev-lang/python3.bst
- components/qt6-toolkit/qtlanguageserver.bst
- components/qt6-toolkit/qtshadertools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtsvg.bst

config:
  install-commands:
    (>):
    - |
      mkdir -p "%{install-root}%{bindir}"
      while read -r target link; do
        ln -srf "%{install-root}%{prefix}/$target" "%{install-root}%{prefix}/$link"
      done < "%{build-dir}/user_facing_tool_links.txt"

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtdeclarative-everywhere-src-%{qt6-track}.tar.xz'
  ref: 215b7b70517e380123eabc6b92243f3c47b6f016a91d126057dbe53551c6b430

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/qml6'
        - '%{bindir}/qmlcachegen6'
        - '%{bindir}/qmleasing6'
        - '%{bindir}/qmlls6'
        - '%{bindir}/qmlpreview6'
        - '%{bindir}/qmlscene6'
