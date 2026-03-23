kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qt6/qtdeclarative.bst
- components/qt6/qtquick3d.bst
- components/qt6/qtshadertools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- components/qt6/qtbase.bst

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtmultimedia-everywhere-src-%{qt6-version}.tar.xz'
  ref: 90c4cac0a7a983b68d1b0873d0714e7873b9a493403fa8593e8a4eea3ea26040
