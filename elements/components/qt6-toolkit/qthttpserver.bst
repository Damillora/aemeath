kind: cmake

(@):
- include/vars/qt6.yml

build-depends:
- components/buildsystems/cmake.bst
- components/qt6-toolkit/qtdeclarative.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtwebsockets.bst

sources:
- kind: tar
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qthttpserver-everywhere-src-%{qt6-track}.tar.xz'
  ref: f0f5763b2ba58f20f5cffdfbedb97e62e32b5c639df6d9a6378905028be7bd8e
