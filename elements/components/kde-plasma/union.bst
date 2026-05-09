kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/qt6-toolkit/qtshadertools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kirigami.bst
- components/kde-misc/cxx-rust-cssparser.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/union-%{plasma-track}.tar.xz'
  ref: b0025531e4bd7b6a85df14a679b4b837c0e11b3c59bf4c8d0aac31a7d8a97533
