kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
#- components/media-libs/ffmpeg.bst
#- components/media-libs/taglib.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/karchive.bst
- components/kde-kf6/kcodecs.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/ki18n.bst
- components/qt6-libs/poppler-qt.bst
- components/graphics-libs/exiv2.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: git_repo
  url: kde:frameworks/kfilemetadata.git
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.27.0-0-gc363e65a1e861aa7efcc8514b5337f1f253748c4
