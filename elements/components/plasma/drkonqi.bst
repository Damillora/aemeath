kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gdb.bst
- freedesktop-sdk.bst:components/elfutils.bst
- components/qt6/qtbase.bst
- components/qt6/qtdeclarative.bst
- components/kf6/kconfig.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kcrash.bst
- components/kf6/ki18n.bst
- components/kf6/kidletime.bst
- components/kf6/kio.bst
- components/kf6/kirigami.bst
- components/kf6/kitemmodels.bst
- components/kf6/knotifications.bst
- components/kf6/kjobwidgets.bst
- components/kf6/kservice.bst
- components/kf6/kstatusnotifieritem.bst
- components/kf6/kwallet.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst
- components/kf6/syntax-highlighting.bst
- components/deps/qt6-polkit-qt.bst
- components/deps/python3-psutil.bst
- components/deps/python3-pygdbmi.bst
- components/deps/python3-sentry-sdk.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DWITH_PYTHON_VENDORING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/drkonqi-%{plasma-version}.tar.xz'
  ref: 79a9ee0f1011fc7813ca419d8c8098ce3be9ff74136d3bd80ef730fb7547f78f
