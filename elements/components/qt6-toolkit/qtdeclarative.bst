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
  ref: 52e670f670b0304f534b24f98c47ceb8a41bb710464414ebc9527ec71cc86aa4

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
