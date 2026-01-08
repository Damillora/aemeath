kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtlanguageserver.bst
- components/qt6/qtshadertools.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst

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
        ln -sr "%{install-root}%{prefix}/$target" "%{install-root}%{prefix}/$link"
      done < "%{build-dir}/user_facing_tool_links.txt"

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtdeclarative-everywhere-src-%{qt6-version}.tar.xz'
  ref: 4fb4efb894e0b96288543505d69794d684bcfbe4940ce181d3e6817bda54843e

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
