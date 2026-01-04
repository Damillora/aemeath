kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst

config:
  install-commands:
  - |
    %{make-install}

  - |
    rm "%{install-root}%{bindir}/qtdiag"
    ln -sf "qtdiag6" "%{install-root}%{bindir}/qtdiag"

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qttools-everywhere-src-%{qt6-version}.tar.xz'
  ref: 8148408380ffea03101a26305c812b612ea30dbc07121e58707601522404d49b
