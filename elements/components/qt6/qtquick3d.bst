kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- aemeath/platform.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtshadertools.bst
- components/qt6/qtquicktimeline.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtquick3d-everywhere-src-%{qt6-version}.tar.xz'
  ref: 17d40272becef0dab71b60333bcf0c23d1d25dcf1df16ee9bf0daa7e4de403e6
