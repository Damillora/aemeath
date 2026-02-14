kind: stack

depends:
# Base desktop packages
- aemeath/desktop.bst
# Kernel modules
- os/aemeath/initramfs/kernel-modules.bst
# Configs
- os/aemeath/repart-config.bst
- os/aemeath/sysupdate-config.bst
- os/aemeath/enable-sysupdate.bst
