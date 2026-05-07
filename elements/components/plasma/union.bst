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
- components/kde-misc/cxx-rust-cssparser.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:plasma/union.git
  track: master
#- kind: tar
#  url: 'kde_stable:plasma/%{plasma-version}/systemsettings-%{plasma-version}.tar.xz'
#  ref: 18d2aab42f3f3ce17c5e636238c2d7a1908152f2203f521d6d8441537d3edf04
  ref: b8a2e0d40f58886d581577af88412ef1716a9022
