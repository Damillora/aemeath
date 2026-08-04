kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/desktop-services/flatpak.bst
- components/hw-services/fwupd.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
#- components/qt6-toolkit/qtwebview.bst
- components/kde-kf6/attica.bst
- components/kde-kf6/karchive.bst
- components/kde-kf6/kauth.bst
- components/kde-kf6/kcmutils.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kiconthemes.bst
- components/kde-kf6/kidletime.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/kitemmodels.bst
- components/kde-kf6/knewstuff.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kstatusnotifieritem.bst
- components/kde-kf6/kuserfeedback.bst
- components/kde-kf6/kxmlgui.bst
- components/kde-kf6/purpose.bst
- components/qt6-libs/qcoro.bst
- components/kde-misc/kirigami-addons.bst
- components/qt6-libs/appstream-qt.bst

runtime-depends:
- components/kde-kf6/qqc2-desktop-style.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_SystemdSysupdateBackend=ON
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/discover-%{plasma-track}.tar.xz'
  ref: f8b809c9aaa25c1d636b0bdf144d87a3ee659d5d80f26961d3116a627fef859d
