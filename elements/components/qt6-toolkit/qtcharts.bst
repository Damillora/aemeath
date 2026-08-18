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
  url: 'qt:%{qt6-branch}/%{qt6-track}/submodules/qtcharts-everywhere-src-%{qt6-track}.tar.xz'
  ref: 5069e53b81d125509e937c6379cba6d664c562d5a1e5ed28dd383690d4b6fb29
