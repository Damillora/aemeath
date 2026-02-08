kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/autoconf-archive.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/xmlto.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/pygobject.bst
- freedesktop-sdk.bst:components/cups-daemon.bst
- freedesktop-sdk.bst:components/python3-dbus.bst
- freedesktop-sdk.bst:components/python3-requests.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/gettext.bst
- components/deps/pycups.bst

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
