kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst

depends:
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libdecor.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- components/freedesktop/freeglut.bst
- components/freedesktop/glu.bst

variables:
  meson-local: >-
    -Dgles1=disabled
    -Dosmesa=disabled
    -Dvulkan=disabled

sources:
- kind: git_repo
  url: freedesktop:mesa/demos.git
  track: mesa-demos-*
  ref: mesa-demos-9.0.0-0-g661681767bfb4e8f136aac1fd7934e6b0fa46d29
