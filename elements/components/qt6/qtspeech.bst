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
  ref: c035c318012025875a653245701a23d3807e8e46b8bf7987877842219c273f14
