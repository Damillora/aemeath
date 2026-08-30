kind: stack

depends:
# Base Aemeath OS image
- os/layers/base/deps.bst
# Buildsystems
- components/buildsystems/autotools.bst
- components/buildsystems/cmake.bst
- components/buildsystems/meson.bst
- components/buildsystems/python.bst
