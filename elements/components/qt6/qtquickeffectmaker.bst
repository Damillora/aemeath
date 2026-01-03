kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtquick3d.bst
- components/qt6/qtshadertools.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtquickeffectmaker-everywhere-src-%{qt6-version}.tar.xz'
  ref: 3036984cc55054f59c4a7c7d30d9b9a2dd7491344b3201c5a133cc3cdf12acc9
