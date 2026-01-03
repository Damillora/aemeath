kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtlanguageserver.bst
- components/qt6/qtshadertools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtsvg.bst

config:
  install-commands:
  - |
    %{make-install}

  - |
    for f in qml qmleasing qmlls qmlpreview qmlscene
    do
        rm "%{install-root}%{bindir}/$f"
        ln -sf "$f6" "%{install-root}%{bindir}/$f"
    done

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtdeclarative-everywhere-src-%{qt6-version}.tar.xz'
  ref: 4fb4efb894e0b96288543505d69794d684bcfbe4940ce181d3e6817bda54843e
