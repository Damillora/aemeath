kind: filter

build-depends:
- components/deps/signond.bst

runtime-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst

config:
  include:
  - signon-qt6
  - libsignond-qt-docs
  include-orphans: false
