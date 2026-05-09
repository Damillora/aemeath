kind: manual

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/util-libs/libxml2.bst

runtime-depends:
- components/sys-data/clean-xml-catalog.bst

config:
  install-commands:
  - |
    install -v -d -m755 %{install-root}%{datadir}/xml/docbook/xml-dtd-4.5 &&
    install -v -d -m755 %{install-root}%{sysconfdir}/xml                           &&
    cp -v -af --no-preserve=ownership                      \
        catalog.xml docbook.cat *.dtd ent/ *.mod           \
        %{install-root}%{datadir}/xml/docbook/xml-dtd-4.5
    xmlcatalog --noout --add "rewriteSystem"        \
        "http://www.oasis-open.org/docbook/xml/4.5" \
        "file:///usr/share/xml/docbook/xml-dtd-4.5" \
        %{install-root}%{datadir}/xml/docbook/xml-dtd-4.5/catalog.xml &&

    xmlcatalog --noout --add "rewriteURI"           \
        "http://www.oasis-open.org/docbook/xml/4.5" \
        "file:///usr/share/xml/docbook/xml-dtd-4.5" \
        %{install-root}%{datadir}/xml/docbook/xml-dtd-4.5/catalog.xml
    for DTDVERSION in 4.1.2 4.2 4.3 4.4
    do
      xmlcatalog --noout --add "public"                                  \
        "-//OASIS//DTD DocBook XML V$DTDVERSION//EN"                     \
        "http://www.oasis-open.org/docbook/xml/$DTDVERSION/docbookx.dtd" \
        %{install-root}%{datadir}/xml/docbook/xml-dtd-4.5/catalog.xml

      xmlcatalog --noout --add "rewriteSystem"              \
        "http://www.oasis-open.org/docbook/xml/$DTDVERSION" \
        "file:///usr/share/xml/docbook/xml-dtd-4.5"         \
        %{install-root}%{datadir}/xml/docbook/xml-dtd-4.5/catalog.xml

      xmlcatalog --noout --add "rewriteURI"                 \
        "http://www.oasis-open.org/docbook/xml/$DTDVERSION" \
        "file:///usr/share/xml/docbook/xml-dtd-4.5"         \
        %{install-root}%{datadir}/xml/docbook/xml-dtd-4.5/catalog.xml
    done

public:
  bst:
    integration-commands:
    - |
      set -e

      [ -f "%{sysconfdir}/xml/catalog" ] || xmlcatalog --noout --create "%{sysconfdir}/xml/catalog"
      add_main() {
        xmlcatalog --noout --add "$1" "$2" "file://%{datadir}/xml/docbook/xml-dtd-4.5/catalog.xml" "%{sysconfdir}/xml/catalog"
      }

      add_main delegatePublic "-//OASIS//ENTITIES DocBook XML"
      add_main delegatePublic "-//OASIS//DTD DocBook XML"
      add_main delegateSystem "http://www.oasis-open.org/docbook/"
      add_main delegateSystem "http://docbook.org/xml/"

sources:
- kind: zip
  url: https://archive.docbook.org/xml/4.5/docbook-xml-4.5.zip
  ref: 4e4e037a2b83c98c6c94818390d4bdd3f6e10f6ec62dd79188594e26190dc7b4
  base-dir: ''
