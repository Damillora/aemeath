kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/qt6/qtshadertools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/kiconthemes.bst
- components/kf6/kirigami.bst
- components/deps/cxx-rust-cssparser.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:plasma/union.git
  ref: 41f457a9e5a14af4dc1c8fd6be6963b03cbe257d
#- kind: tar
#  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-version}/union-%{plasma-version}.tar.xz'
#  ref: 18d2aab42f3f3ce17c5e636238c2d7a1908152f2203f521d6d8441537d3edf04
