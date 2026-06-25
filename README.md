# Aemeath OS

An experimental independent Linux distribution running the KDE Plasma 
desktop environment.

Aemeath OS is an immutable Linux distribution and does not have a package manager. 
System updates are image-based, while applications are installed from Flatpak. 
It aims to deliver a complete desktop experience based on the latest KDE software.

**WARNING: Aemeath is currently very experimental, and not ready to use as a daily driver.
It is recommended to run Aemeath inside a virtual machine with 3D acceleration enabled,
to prevent your real data from being eaten by the Threnodian.**

## Current Status

Aemeath OS has moved away from the Freedesktop SDK base, becoming an independent 
distribution. It currently boots into a usable, but minimal KDE Plasma environment.

An S3 bucket for downloads has been set up, and used for system updates and downloads.

Secure Boot is supported, using Aemeath OS' own keys.

## Download

[https://github.com/Damillora/aemeath/releases/](GitHub Release)

## Building

Aemeath is currently built as a raw disk image.

```
just use-test-keys
bst build os/aemeath/disk-image.bst
```

## Acknowledgements

- The [Freedesktop SDK](https://freedesktop-sdk.io) project, which was an excellent starting point for Aemeath OS.
- [GNOME OS](https://os.gnome.org), where a lot of additional dependencies were imported from.
