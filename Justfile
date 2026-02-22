prod_keys := "false"
bst := if prod_keys == "true" { "bst -o prod_keys true" } else  { "bst" }

[default]
default: microsoft-keys build export disk-image

clean: clean-target clean-disks

clean-target:
    rm -rf target

clean-disks:
    rm -rf disks

clean-live:
    rm -rf live

build:
    {{bst}} build aemeath/desktop.bst

export: clean-target
    {{bst}} build os/aemeath/export.bst
    {{bst}} artifact checkout os/aemeath/export.bst --directory target

disk-image: clean-disks
    {{bst}} build os/aemeath/disk-image.bst
    {{bst}} artifact checkout os/aemeath/disk-image.bst --directory disks

live-image: clean-live
    {{bst}} build os/aemeath/live-image.bst
    {{bst}} artifact checkout os/aemeath/live-image.bst --directory live

generate-keys:
    #!/bin/bash
    set -euxo pipefail
    [ -d files/boot-keys ] || mkdir -p files/boot-keys
    [ -d files/boot-keys/modules ] || mkdir -p files/boot-keys/modules
    for key_type in PK KEK DB VENDOR linux-module-cert; do
        openssl req -new -x509 -newkey rsa:2048 -subj "/CN=Aemeath OS ${key_type} key/" -keyout "files/boot-keys/${key_type}.key" -out "files/boot-keys/${key_type}.crt" -days 3650 -nodes -sha256
    done
    cp files/boot-keys/linux-module-cert.crt files/boot-keys/modules/

use-test-keys:
    #!/bin/bash
    set -euxo pipefail
    [ -d files/boot-keys ] || mkdir -p files/boot-keys
    [ -d files/boot-keys/modules ] || mkdir -p files/boot-keys/modules
    for key_type in PK KEK DB VENDOR linux-module-cert; do
        cp files/boot-keys-test/${key_type}.key files/boot-keys/
        cp files/boot-keys-test/${key_type}.crt files/boot-keys/
    done
    cp files/boot-keys/linux-module-cert.crt files/boot-keys/modules/

microsoft-keys:
    #!/bin/bash
    set -euxo pipefail
    [ -d files/boot-keys/extra-kek ] || mkdir -p files/boot-keys/extra-kek
    [ -d files/boot-keys/extra-db ] || mkdir -p files/boot-keys/extra-db
    curl https://www.microsoft.com/pkiops/certs/MicCorUEFCA2011_2011-06-27.crt | openssl x509 -inform der -outform pem >files/boot-keys/extra-kek/mic-kek.crt
    echo 77fa9abd-0359-4d32-bd60-28f4e78f784b >files/boot-keys/extra-kek/mic-kek.owner
    curl https://www.microsoft.com/pkiops/certs/MicCorUEFCA2011_2011-06-27.crt | openssl x509 -inform der -outform pem >files/boot-keys/extra-db/mic-other.crt
    echo 77fa9abd-0359-4d32-bd60-28f4e78f784b >files/boot-keys/extra-db/mic-other.owner
    curl https://www.microsoft.com/pkiops/certs/MicWinProPCA2011_2011-10-19.crt | openssl x509 -inform der -outform pem >files/boot-keys/extra-db/mic-win.crt
    echo 77fa9abd-0359-4d32-bd60-28f4e78f784b >files/boot-keys/extra-db/mic-win.owner