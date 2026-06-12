kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst

variables:
  cmake-local: >-
    -DBUILD_STATIC_LIBS=OFF
config:
  configure-commands:
    (<):
    - |
      sed -i 's/VERSION 2.8/VERSION 4.0/' apps/CMakeLists.txt
      sed -i 's/VERSION 3.9/VERSION 4.0/' tests/CMakeLists.txt

sources:
- kind: git_repo
  url: github:json-c/json-c.git
  track: 'json-c-*'
  exclude:
  - "*rc*"
  ref: json-c-0.18-20240915-0-g41a55cfcedb54d9c1874f2f0eb07b504091d7e37
