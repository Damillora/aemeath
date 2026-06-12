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
- components/deps/freeglut.bst
- components/deps/glu.bst

variables:
  meson-local: >-
    -Dgles1=disabled
    -Dosmesa=disabled
    -Dvulkan=disabled
config:
  install-commands:
  - |
    install -Dm 0755 _builddir/src/egl/opengl/\
    {eglinfo,eglgears_wayland,eglgears_x11,\
    eglkms,egltri_wayland,egltri_x11,\
    peglgears,xeglgears,xeglthreads} -t "%{install-root}%{bindir}/"

    install -Dm 0755 _builddir/src/egl/opengles2/\
    {es2_info,es2gears_wayland,es2gears_x11,es2tri} -t "%{install-root}%{bindir}/"

    install -Dm 0755 _builddir/src/xdemos/{glxinfo,glxgears} -t "%{install-root}%{bindir}/"
    install -Dm 0755 _builddir/src/vulkan/vkgears -t "%{install-root}%{bindir}/"

  - |
    %{install-extra}

sources:
- kind: git_repo
  url: freedesktop:mesa/demos.git
  ref: mesa-demos-9.0.0-0-g661681767bfb4e8f136aac1fd7934e6b0fa46d29
