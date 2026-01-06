clean:
    rm -rf target
    rm -rf disks

generate-version:
    #!/usr/bin/env bash
    CURRENT_DATE="$(date +'%Y%m%d')"

    echo "image-version: ${CURRENT_DATE}" > include/image-version.yml

enable-push:
    #!/usr/bin/env bash
    cat <<EOF > include/artifacts.yml
    artifacts:
    - url: https://aemeath-cache.castorice.my.id
      push: true
      auth:
        client-key: aemeath.key
        client-cert: aemeath.crt
    EOF

disable-push:
    #!/usr/bin/env bash
    set -euox pipefail

    cat <<EOF > include/artifacts.yml
    artifacts:
    - url: https://aemeath-cache.castorice.my.id
      auth:
        client-key: aemeath.key
        client-cert: aemeath.crt
    EOF

build: clean generate-version enable-push
    bst build aemeath/os.bst

export: build disable-push
    bst build os/aemeath/export.bst
    bst artifact checkout os/aemeath/export.bst --directory target

disk-image: build disable-push
    bst build os/aemeath/disk-image.bst
    bst artifact checkout os/aemeath/disk-image.bst --directory disks

default: build export disk-image
