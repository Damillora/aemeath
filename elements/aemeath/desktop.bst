kind: stack

depends:
- aemeath/minimal.bst
# i686 libraries, just in case
- freedesktop-sdk.bst:cross-compilers/standard-libs-i686.bst
# System services
- freedesktop-sdk.bst:components/plymouth.bst
- freedesktop-sdk.bst:components/networkmanager.bst
- freedesktop-sdk.bst:components/wpa-supplicant.bst
- freedesktop-sdk.bst:components/pipewire-daemon.bst
- freedesktop-sdk.bst:components/wireplumber.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/cups-daemon.bst
- components/deps/systemd-sysupdated.bst
- components/other/tailscale.bst
# System utilities
- freedesktop-sdk.bst:components/procps.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:components/nano.bst
- freedesktop-sdk.bst:components/containers-common.bst
- freedesktop-sdk.bst:components/podman.bst
- freedesktop-sdk.bst:components/sudo.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/rsync.bst
- components/other/toolbox.bst
# System libraries
- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:extensions/codecs-extra/ffmpeg.bst #H.264 support
- freedesktop-sdk.bst:extensions/codecs-extra/libheif.bst #H.264 support
- freedesktop-sdk.bst:extensions/codecs-extra/gstreamer-plugins-ugly-x264.bst #H.264 support
# Other utilities
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/findutils.bst
# Plasma
- components/plasma.bst
# Built-in apps
- components/gear/konsole.bst
- components/gear/kwrite.bst
- components/gear/dolphin.bst
- components/gear/ark.bst
- components/gear/partitionmanager.bst
- components/gear/audiocd-kio.bst
- components/gear/filelight.bst
- components/gear/kcharselect.bst
- components/gear/kdeconnect-kde.bst
- components/gear/kfind.bst
- components/gear/kdialog.bst
#- components/gear/khelpcenter.bst # wait for Qt6WebEngine
- components/gear/kio-admin.bst
# Configurations
- freedesktop-sdk.bst:components/steam-devices.bst
- freedesktop-sdk.bst:vm/base-filesystem.bst
- freedesktop-sdk.bst:vm/config/journald.bst
- freedesktop-sdk.bst:vm/config/resolved.bst
- freedesktop-sdk.bst:vm/config/useradd-default.bst
- freedesktop-sdk.bst:vm/config/systemd-homed-firstboot.bst
- components/aemeath/os-release.bst
- components/aemeath/flathub-config.bst
- components/aemeath/settings.bst
- components/aemeath/systemd-preset.bst
- components/aemeath/systemd-preset-all.bst
