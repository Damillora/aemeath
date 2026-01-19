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
  ref: f7a4f9bc2840d4f0f9f7329f0dcb3d3500c54177b8e368091a3727c7320e67b8
