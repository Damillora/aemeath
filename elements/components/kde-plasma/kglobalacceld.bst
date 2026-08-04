kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst

depends:
- components/x11-libs/x11.bst
- components/x11-libs/xcb.bst
- components/x11-libs/xcb-util-keysyms.bst
- components/qt6-toolkit/qtbase.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/kdbusaddons.bst
- components/kde-kf6/kglobalaccel.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kjobwidgets.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kwindowsystem.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/kglobalacceld-%{plasma-track}.tar.xz'
  ref: 538f883e7b04397d0c5b1756e750117022fe6a03a43ba890f65d62e2cf45e783
