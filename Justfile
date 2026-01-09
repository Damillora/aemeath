[default]
default: build export disk-image

clean: clean-target clean-disks

clean-target:
    rm -rf target

clean-disks:
    rm -rf disks

generate-version:
    #!/usr/bin/env bash
    CURRENT_DATE="$(date +'%Y%m%d')"

    echo "image-version: ${CURRENT_DATE}" > include/image-version.yml

build: generate-version
    bst build aemeath/desktop.bst

export: clean-target build
    bst build os/aemeath/export.bst
    bst artifact checkout os/aemeath/export.bst --directory target

disk-image: clean-disks build
    bst build os/aemeath/disk-image.bst
    bst artifact checkout os/aemeath/disk-image.bst --directory disks
