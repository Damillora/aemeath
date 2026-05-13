kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtquicktimeline-everywhere-src-%{qt6-version}.tar.xz'
  ref: af53f643fd9e4045e1b9ba919998e5c048ca877452c08036c9c8c5ee07ea8c27
