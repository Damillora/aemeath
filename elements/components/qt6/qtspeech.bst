kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtquick3d.bst
- components/qt6/qtshadertools.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtmultimedia.bst
- components/deps/speech-dispatcher.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtspeech-everywhere-src-%{qt6-version}.tar.xz'
  ref: c02f355a58f3bbcf404a628bf488b6aeb2d84a94c269afdb86f6e529343ab01f
