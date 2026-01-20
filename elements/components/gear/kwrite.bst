kind: filter

build-depends:
- components/gear/kate-base.bst

runtime-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gpgmepp.bst
- components/qt6/qtbase.bst
- components/kf6/karchive.bst
- components/kf6/kbookmarks.bst
- components/kf6/kcolorscheme.bst
- components/kf6/kcompletion.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kconfigwidgets.bst
- components/kf6/kcrash.bst
- components/kf6/kdbusaddons.bst
- components/kf6/kguiaddons.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/kio.bst
- components/kf6/knewstuff.bst
- components/kf6/kparts.bst
- components/kf6/kservice.bst
- components/kf6/syntax-highlighting.bst
- components/kf6/ktexteditor.bst
- components/kf6/kuserfeedback.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/kf6/kxmlgui.bst

config:
  include:
  - kate-libs
  - kwrite
  include-orphans: false
