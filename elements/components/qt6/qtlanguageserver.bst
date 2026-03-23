kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtlanguageserver-everywhere-src-%{qt6-version}.tar.xz'
  ref: 1bc8e443f561f9086d40943e7bd685e9536c4658b3df770d30cf4733b7f405bf
