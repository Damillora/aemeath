kind: manual

(@):
- elements/sources/docbook-xsl.yml

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