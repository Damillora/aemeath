[default]
default: build export disk-image

clean: clean-target clean-disks

clean-target:
    rm -rf target

clean-disks:
    rm -rf disks

build:
    bst build aemeath/desktop.bst

export: clean-target build
    bst build os/aemeath/export.bst
    bst artifact checkout os/aemeath/export.bst --directory target

disk-image: clean-disks build
    bst build os/aemeath/disk-image.bst
    bst artifact checkout os/aemeath/disk-image.bst --directory disks
