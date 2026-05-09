kind: meson

build-depends:
- components/buildsystems/meson.bst
- components/buildsystems/autotools.bst
- components/wayland-libs/wayland-protocols.bst

depends:
- components/graphics-libs/libdrm.bst
- components/desktop-libs/libdecor.bst
- components/x11-libs/xkbcommon.bst
- components/graphics-libs/mesa.bst
- components/graphics-libs/freeglut.bst
- components/graphics-libs/glu.bst

variables:
  meson-local: >-
    -Dgles1=disabled
    -Dosmesa=disabled
    -Dvulkan=disabled
config:
  install-commands:
  - |
    install -Dm 0755 _builddir/src/egl/opengl/eglinfo -t "%{install-root}%{bindir}/"

    install -Dm 0755 _builddir/src/egl/opengles2/es2_info -t "%{install-root}%{bindir}/"

    install -Dm 0755 _builddir/src/xdemos/glxinfo -t "%{install-root}%{bindir}/"

sources:
- kind: git_repo
  url: freedesktop:mesa/demos.git
  ref: mesa-demos-9.0.0-0-g661681767bfb4e8f136aac1fd7934e6b0fa46d29
