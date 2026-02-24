kind: cmake

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/kf6/extra-cmake-modules.bst
- components/kf6/kdoctools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qt6/qtbase.bst
- components/qt6/qtsvg.bst
- components/kf6/kcmutils.bst
- components/kf6/kcompletion.bst
- components/kf6/kcoreaddons.bst
- components/kf6/kconfig.bst
- components/kf6/kdesu.bst
- components/kf6/ki18n.bst
- components/kf6/kiconthemes.bst
- components/kf6/kio.bst
- components/kf6/kparts.bst
- components/kf6/kservice.bst
- components/kf6/kwidgetsaddons.bst
- components/kf6/kwindowsystem.bst

variables:
  cmake-local: -DBUILD_TESTING=OFF

sources:
- kind: tar
  url: 'kde_stable:plasma/%{plasma-version}/kde-cli-tools-%{plasma-version}.tar.xz'
  ref: 28810d0b4407d0ac752f9420ecd843af2f5568751fc1c70d114620f0596fdeec
