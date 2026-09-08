kind: cmake

build-depends:
- components/buildsystems/cmake.bst
- components/kde-kf6/extra-cmake-modules.bst

depends:
- components/dev-tools/gdb.bst
- components/dev-tools/elfutils.bst
- components/qt6-toolkit/qtbase.bst
- components/qt6-toolkit/qtdeclarative.bst
- components/kde-kf6/kconfig.bst
- components/kde-kf6/kcoreaddons.bst
- components/kde-kf6/kcrash.bst
- components/kde-kf6/ki18n.bst
- components/kde-kf6/kidletime.bst
- components/kde-kf6/kio.bst
- components/kde-kf6/kirigami.bst
- components/kde-kf6/kitemmodels.bst
- components/kde-kf6/knotifications.bst
- components/kde-kf6/kjobwidgets.bst
- components/kde-kf6/kservice.bst
- components/kde-kf6/kstatusnotifieritem.bst
- components/kde-kf6/kwallet.bst
- components/kde-kf6/kwidgetsaddons.bst
- components/kde-kf6/kwindowsystem.bst
- components/kde-kf6/syntax-highlighting.bst
- components/qt6-libs/polkit-qt.bst
- components/dev-python3/psutil.bst
- components/dev-python3/pygdbmi.bst
- components/dev-python3/sentry-sdk.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DWITH_PYTHON_VENDORING=OFF
    -DCMAKE_INSTALL_LIBEXECDIR=libexec

sources:
- kind: tar
  url: 'kde_download:%{plasma-branch}/plasma/%{plasma-track}/drkonqi-%{plasma-track}.tar.xz'
  ref: 9d02b9bd8534ac98dbb77a73248112654e2dee3ab1cf3cc59e69ba78027ab423
