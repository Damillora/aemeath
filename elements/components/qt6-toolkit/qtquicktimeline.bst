kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtquicktimeline-everywhere-src-%{qt6-track}.tar.xz'
  ref: af53f643fd9e4045e1b9ba919998e5c048ca877452c08036c9c8c5ee07ea8c27
