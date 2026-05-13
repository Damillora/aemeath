kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtshadertools-everywhere-src-%{qt6-version}.tar.xz'
  ref: 2075052f9b23bcf9de045bbd180037084942f82cce870aab14a1454902c982fc
