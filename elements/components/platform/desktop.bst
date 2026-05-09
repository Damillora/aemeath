kind: stack

depends:
- components/platform/system-basic.bst
# System services
- components/desktop-services/plymouth.bst
- components/net-services/networkmanager.bst
- components/net-services/wpa-supplicant.bst
- components/desktop-services/pipewire-daemon.bst
- components/desktop-services/wireplumber.bst
- components/desktop-services/flatpak.bst
- components/desktop-services/cups-daemon.bst
- components/net-services/tailscale.bst
# System utilities
#- components/util-term/kmscon.bst
- components/net-tools/openssh.bst
- components/util-text/nano.bst
- components/container-data/containers-common.bst
- components/container-tools/podman.bst
#- components/util-term/kmscon.bst
#- components/security-tools/sudo.bst
- components/desktop-tools/desktop-file-utils.bst
- components/net-tools/rsync.bst
- components/container-tools/toolbox.bst
# Other utilities
- components/dev-tools/git.bst
- components/util-sys/findutils.bst
# Plasma
- components/kde-plasma.bst
# Built-in apps
- components/kde-gear/konsole.bst
- components/kde-gear/kwrite.bst
- components/kde-gear/dolphin.bst
- components/kde-gear/ark.bst
- components/kde-gear/partitionmanager.bst
- components/kde-gear/audiocd-kio.bst
- components/kde-gear/filelight.bst
- components/kde-gear/kcharselect.bst
- components/kde-gear/kdeconnect-kde.bst
- components/kde-gear/kfind.bst
- components/kde-gear/kdialog.bst
- components/kde-gear/qrca.bst
#- components/kde-gear/khelpcenter.bst # wait for Qt6WebEngine
- components/kde-gear/kio-admin.bst
# Configurations
- components/sys-data/steam-devices.bst
- components/sys-config/resolved.bst
- components/sys-config/useradd-default.bst
#- components/sys-config/systemd-homed-firstboot.bst
- components/sys-data/os-release.bst
- components/sys-config/flathub-config.bst
- components/sys-config/always-ldconfig.bst
- components/sys-config/systemd-preset.bst
- components/sys-config/systemd-preset-all.bst
