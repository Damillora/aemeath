kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-python3/setuptools.bst
- components/dev-tools/autoconf-archive.bst
- components/desktop-tools/desktop-file-utils.bst
- components/dev-tools/docbook-xsl.bst
- components/util-libs/libxslt.bst
- components/dev-tools/xmlto.bst

depends:
- components/dev-python3/pygobject.bst
- components/desktop-services/cups-daemon.bst
- :components/dev-python3/dbus.bst
- components/dev-python3/requests.bst
- components/sys-services/systemd.bst
- components/dev-python3/pycups.bst

config:
  install-commands:
    (>):
    - cd %{install-root}%{bindir} && rm system-config-printer system-config-printer-applet
    - cd %{install-root}%{sysconfdir} && rm -r xdg
    - cd %{install-root}%{datadir} && rm -r applications locale man
    - cd %{install-root}%{datadir}/system-config-printer && rm -r icons/ troubleshoot/ ui/ xml/ && rm applet.py check-device-ids.py HIG.py install-printerdriver.py SearchCriterion.py serversettings.py system-config-printer.py ToolbarSearchEntry.py userdefault.py

sources:
- kind: git_repo
  url: github:OpenPrinting/system-config-printer.git
  track: "v*"
  ref: v1.5.18-0-g895d3dec50c93bfd4f142bac9bfcc13051bf84cb
- kind: patch_queue
  path: patches/system-config-printer
