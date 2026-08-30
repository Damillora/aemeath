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
