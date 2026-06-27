kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtdeclarative.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtmultimedia.bst
- components/desktop-services/speech-dispatcher.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtspeech-everywhere-src-%{qt6-track}.tar.xz'
  ref: c035c318012025875a653245701a23d3807e8e46b8bf7987877842219c273f14
