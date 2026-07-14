kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst
- components/kde-misc/plasma-wayland-protocols.bst

depends:
- components/x11-libs/xcb.bst
- components/x11-libs/xcb-util.bst
- components/x11-libs/xcb-util-cursor.bst
- components/x11-libs/xcb-util-image.bst
- components/wayland-libs/wayland.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/qt6-toolkit/qtmultimedia.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kglobalaccel.bst
- components/kde-kf6/kguiaddons.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kstatusnotifieritem.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/kxmlgui.bst
- components/kde-kf6/prison.bst
- components/kde-kf6/purpose.bst
- components/kde-plasma/kpipewire.bst
- components/kde-plasma/layer-shell-qt.bst
- components/graphics-libs/opencv.bst
- components/qt6-libs/kquickimageeditor.bst
- components/graphics-libs/tesseract.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/spectacle-%{plasma-track}.tar.xz'
  ref: 4f5c87592f35bb1bd58fa8e72829c39049646acc3d2f79451daa340c0dbb1154
