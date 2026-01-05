build:
    #!/usr/bin/env bash
    set -euox pipefail

    CURRENT_DATE="$(date +'%Y%m%d')"

    echo "image-version: ${CURRENT_DATE}" > include/image-version.yml

    cat <<EOF > include/artifacts.yml
    artifacts:
    - url: https://aemeath-cache.castorice.my.id
      auth:
        client-key: aemeath.key
        client-cert: aemeath.crt
    EOF
    bst build aemeath/os.bst

    cat <<EOF > include/artifacts.yml
    artifacts:
    - url: https://aemeath-cache.castorice.my.id
      push: true
      auth:
        client-key: aemeath.key
        client-cert: aemeath.crt
    EOF
    bst artifact push	
    cat <<EOF > include/artifacts.yml
    artifacts:
    - url: https://aemeath-cache.castorice.my.id
      auth:
        client-key: aemeath.key
        client-cert: aemeath.crt
    EOF
    bst build os/aemeath/export.bst
    bst artifact checkout os/aemeath/export.bst --directory target
