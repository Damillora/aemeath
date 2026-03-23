kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtquicktimeline-everywhere-src-%{qt6-version}.tar.xz'
  ref: 06dbe1cc541431fa321023992ca4ccf83c76b25d07bbf516e0af887a38f32cd6
