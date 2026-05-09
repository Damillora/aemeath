kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtpositioning.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtlocation-everywhere-src-%{qt6-track}.tar.xz'
  ref: 3791ce77299e6f600a593d0fbfa5bd32fbcfc2d16104782b84acc489e382e41b
