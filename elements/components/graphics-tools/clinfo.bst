kind: make

build-depends:
- components/buildsystems/minimal.bst
- components/graphics-data/opencl-headers.bst

depends:
- components/graphics-libs/ocl-icd.bst

sources:
- kind: git_repo
  url: github:Oblomov/clinfo.git
  ref: 3.0.25.02.14-0-gc57b7e73e910ca1b558415472c8192eeb75711b1
