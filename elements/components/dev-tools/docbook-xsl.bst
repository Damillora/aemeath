kind: manual

build-depends:
- components/buildsystems/minimal.bst
- components/util-libs/libxml2.bst

runtime-depends:
- components/dev-tools/docbook-xml4.bst
- components/sys-data/clean-xml-catalog.bst

config:
  install-commands:
  - |
    install -v -m755 -d %{install-root}%{datadir}/xml/docbook/xsl-stylesheets-nons-1.79.2 &&

    cp -v -R VERSION assembly common eclipse epub epub3 extensions fo        \
            highlighting html htmlhelp images javahelp lib manpages params  \
            profiling roundtrip slides template tests tools webhelp website \
            xhtml xhtml-1_1 xhtml5                                          \
        %{install-root}%{datadir}/xml/docbook/xsl-stylesheets-nons-1.79.2 &&

    ln -svf VERSION %{install-root}%{datadir}/xml/docbook/xsl-stylesheets-nons-1.79.2/VERSION.xsl


public:
  bst:
    integration-commands:
    - |
      set -e

      [ -f "%{sysconfdir}/xml/catalog" ] || xmlcatalog --noout --create "%{sysconfdir}/xml/catalog"
      add_main() {
        xmlcatalog --noout --add "$1" "$2" "file://%{datadir}/xml/docbook/xsl-stylesheets-nons-1.79.2" "%{sysconfdir}/xml/catalog"
      }

      add_main rewriteSystem "http://docbook.sourceforge.net/release/xsl/1.79.2"
      add_main rewriteURI "http://docbook.souceforge.net/release/xsl/1.79.2"
      add_main rewriteSystem "http://docbook.sourceforge.net/release/xsl/current"
      add_main rewriteURI "http://docbook.sourceforge.net/release/xsl/current"

sources:
- kind: tar
  url: github:docbook/xslt10-stylesheets/releases/download/release/1.79.2/docbook-xsl-nons-1.79.2.tar.bz2
  ref: ee8b9eca0b7a8f89075832a2da7534bce8c5478fc8fc2676f512d5d87d832102
- kind: patch
  path: patches/docbook-xsl/docbook-xsl-nons-1.79.2-stack_fix-1.patch
