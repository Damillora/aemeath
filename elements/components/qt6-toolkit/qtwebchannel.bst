kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtwebchannel-everywhere-src-%{qt6-track}.tar.xz'
  ref: feb3149758bda887f0c292656194812dd2c227595badc8fbdeb2fb2311c5575f
