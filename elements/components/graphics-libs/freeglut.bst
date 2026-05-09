kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/graphics-libs/mesa.bst
- components/x11-libs/xi.bst
- components/graphics-libs/glu.bst

variables:
  local_flags: -std=gnu17
  cmake-local: >
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5
    -DFREEGLUT_BUILD_DEMOS:BOOL=OFF

sources:
- kind: git_repo
  url: github:FreeGLUTProject/freeglut.git
  ref: v3.8.0-0-g3db1649ce1f5e42f1338b51e3fa14849be547d5d
