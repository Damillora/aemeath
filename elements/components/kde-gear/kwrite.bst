kind: filter

build-depends:
- components/kde-gear/kate-base.bst

runtime-depends:
- components/security-libs/gpgmepp.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/karchive.bst
- components/kde-kf6/kbookmarks.bst
- components/kde-kf6/kcolorscheme.bst
- components/kde-kf6/kcompletion.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kconfigwidgets.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/knewstuff.bst
- components/kde-kf6/kparts.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/syntax-highlighting.bst
- components/kde-kf6/ktexteditor.bst
- components/kde-kf6/kuserfeedback.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/kxmlgui.bst

config:
  include:
  - kate-libs
  - kwrite
  include-orphans: false
