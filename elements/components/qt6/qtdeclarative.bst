kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtlanguageserver.bst
- components/qt6/qtshadertools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtsvg.bst

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
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtdeclarative-everywhere-src-%{qt6-version}.tar.xz'
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
