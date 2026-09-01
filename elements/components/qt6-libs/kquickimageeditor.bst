kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kconfig.bst
- components/graphics-libs/opencv.bst

config:
  configure-commands:
    (<):
    - sed -e 's|OpenCV 4.7|OpenCV 5|' -i CMakeLists.txt

sources:
- kind: git_repo
  url: kde:libraries/kquickimageeditor.git
  track: v*
  ref: v0.7.0-0-g6b6525e6379de2112e9698e426124e6e263cb8d0
