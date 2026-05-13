kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtpositioning.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtlocation-everywhere-src-%{qt6-version}.tar.xz'
  ref: 3791ce77299e6f600a593d0fbfa5bd32fbcfc2d16104782b84acc489e382e41b
