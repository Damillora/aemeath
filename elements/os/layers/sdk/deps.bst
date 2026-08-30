kind: stack

depends:
# Base Aemeath OS image
- os/layers/base/deps.bst
# Buildsystems
- components/buildsystems/autotools.bst
- components/buildsystems/cmake.bst
- components/buildsystems/meson.bst
- components/buildsystems/python.bst
# Common build tools
- components/sys-devel/bison.bst
- components/sys-devel/flex.bst
# Documentation
- components/dev-tools/doxygen.bst
- components/dev-tools/help2man.bst
- components/dev-ruby/asciidoctor.bst
- components/dev-go/md2man.bst
- components/dev-tools/docbook-xml4.bst
- components/dev-tools/docbook-xsl.bst
- components/dev-tools/docbook-xsl-ns.bst
- components/dev-tools/gtk-doc.bst
- components/dev-perl/xml-parser.bst
- components/dev-tools/xmlto.bst
- components/dev-tools/texinfo.bst
- components/dev-tools/gperf.bst
- components/dev-lang/tcl.bst
# LLVM, in case something needs it
- components/dev-tools/llvm.bst
# GUI Build tools
- components/wayland-libs/wayland-protocols.bst
- components/x11-libs/xtrans.bst
- components/x11-tools/xorgproto.bst
- components/x11-tools/util-macros.bst
# GNOME build tools
- components/dev-tools/gobject-introspection.bst
# KDE build tools
- components/kde-kf6/extra-cmake-modules.bst
- components/kde-kf6/kdoctools.bst
