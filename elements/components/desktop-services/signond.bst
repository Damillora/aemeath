kind: filter

build-depends:
- components/desktop-services/_private/signond-base.bst

runtime-depends:
- components/qt6-toolkit/qtbase.bst

config:
  exclude:
  - signon-qt6
  - libsignond-qt-docs
  include-orphans: true
