kind: cmake

build-depends:
- components/buildsystems/cmake.bst

depends:
- components/dev-tools/cmake.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: git_repo
  url: 'kde:frameworks/extra-cmake-modules.git'
  track: 'v%{kf6-track}.*'
  exclude:
  - '*rc*'
  ref: v6.30.0-0-g68483132b87f4d7b953aec94ef51d1234d41f937
