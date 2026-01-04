kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtmultimedia.bst
- components/deps/speech-dispatcher.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtspeech-everywhere-src-%{qt6-version}.tar.xz'
  ref: 42caec540f6e10de8628819d10477ed2dc202134753ea68dfc1aa536108b7f4f
