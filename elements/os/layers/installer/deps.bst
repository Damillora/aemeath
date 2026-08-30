kind: stack

depends:
# Base Aemeath OS image
- os/layers/base/deps.bst
# Calamares installer
#- components/sys-apps/calamares.bst
# Repart config for installation
- os/config/repart-config-install.bst
# Aemeath install script
- components/aemeath-tools/aemeath-install.bst
- components/filesystem-util/mtools.bst
