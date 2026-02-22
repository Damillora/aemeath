# Aemeath

An experimental immutable Linux distribution based on the Freedesktop SDK, running the KDE
Plasma desktop environment.

Aemeath does not have a package manager. System updates are image-based,
while applications are installed from Flatpak. It aims to include the latest KDE software,
while building on top of the same Freedesktop SDK used by the Flatpak runtime.

**WARNING: Aemeath is currently very experimental, and not ready to use as a daily driver.
It is recommended to run Aemeath inside a virtual machine with 3D acceleration enabled,
to prevent your real data from being eaten by the Threnodian.**

## Current Status

Right now, it sort of boots into the desktop, but packaging is still pretty much a mess,
especially Plasma ones. This will get cleaned up in due time, but until then, you'll
need to bear with it for a while.

An S3 bucket for downloads has been set up, but there's no easy way to access them yet.
`systemd-sysupdate` does not use the S3 bucket yet.

Secure Boot is currently missing from the installation.

## Download

Coming soon. The bucket is set up, but there's no index page for now.

## Building

Aemeath is currently built as a raw disk image.

```
just use-test-keys
bst build os/aemeath/disk-image.bst
```

## Acknowledgements

- The [Freedesktop SDK](https://freedesktop-sdk.io) project, without which this wouldn't be possible.
- [GNOME OS](https://os.gnome.org), where a lot of additional dependencies were imported from.
