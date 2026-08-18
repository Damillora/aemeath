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
  ref: 9c1d05dc9d710049f20a67680fc6b4293c9b584a90f04f4cf6cc36e758c5cb98
