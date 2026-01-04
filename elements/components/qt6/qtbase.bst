kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst

depends:
- aemeath/platform.bst

variables:
  cmake-local: |
    -DINSTALL_ARCHDATADIR=lib/qt6 \
    -DINSTALL_LIBDIR=lib/x86_64-linux-gnu \
    -DQT_DISABLE_RPATH=ON \
    -DBUILD_WITH_PCH=FALSE \
    -DQT_FEATURE_openssl_linked=ON \
    -DQT_FEATURE_system_sqlite=ON

config:
  install-commands:
  - |
    %{make-install}

  - |
    rm "%{install-root}%{bindir}/qmake"
    ln -sf "qmake6" "%{install-root}%{bindir}/qmake"
    rm "%{install-root}%{bindir}/qtpaths"
    ln -sf "qtpaths6" "%{install-root}%{bindir}/qtpaths"
    rm "%{install-root}%{bindir}/androiddeployqt"
    ln -sf "androiddeployqt6" "%{install-root}%{bindir}/androiddeployqt"

sources:
- kind: tar
  url: 'qt:%{qt6-version-branch}/%{qt6-version}/submodules/qtbase-everywhere-src-%{qt6-version}.tar.xz'
  ref: 5a6226f7e23db51fdc3223121eba53f3f5447cf0cc4d6cb82a3a2df7a65d265d
