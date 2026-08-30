kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/qt6-toolkit/qttools.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/kde-gear/kpmcore.bst
- components/util-libs/yaml-cpp.bst
- components/util-libs/boost.bst

sources:
- kind: git_repo
  url: codeberg:Calamares/calamares.git
  track: 'v*'
  ref: v3.4.2-0-g36d30c492e5c7b5d6d32fed5c5d9790522e1eea3
