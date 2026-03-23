kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtmultimedia.bst
- components/deps/speech-dispatcher.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtspeech-everywhere-src-%{qt6-version}.tar.xz'
  ref: a9c585d1a65a19686dd4d39432fdc8f2b22c9415798a928dba60b39dcd46db21
