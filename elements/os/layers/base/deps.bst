kind: stack

depends:
# Base desktop packages
- components/platform/desktop.bst
# Kernel modules
- os/layers/kernel/signed-modules.bst
# Configs
- os/config/repart-config.bst
- os/config/sysupdate-config.bst
#- os/aemeath/enable-sysupdate.bst
# Aemeath install tools
- os/config/repart-config-install.bst
- components/aemeath-tools/aemeath-install.bst
- components/aemeath-tools/snowfluff.bst
- components/filesystem-util/mtools.bst
# Aemeath live tools
- components/aemeath-tools/live-setup.bst
