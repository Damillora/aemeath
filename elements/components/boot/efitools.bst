kind: make

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/gnu-efi.bst
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/perl-slurp.bst

(?):
- not prod_keys:
    build-depends:
      (>):
      - components/boot/boot-keys-test.bst
- prod_keys:
    build-depends:
      (>):
      - components/boot/boot-keys-prod.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/sbsigntools.bst

variables:
  aemeath-keys-uuid: 4191ff64-84a5-48fd-a262-58b23c00751d
  notparallel: true
  make-args: >-
    PREFIX='%{prefix}'
    CRTPATHS='%{libdir}'
    EXTRAKEYS=''
    EXTERNALKEYS=''
    KEYUPDATEAUTH=''
    KEYBLACKLISTAUTH=''
    KEYHASHBLACKLISTAUTH=''
    MYGUID=%{aemeath-keys-uuid}

config:
  build-commands:
    (<):
    - cp -ra /boot-keys/* .
    (>):
    - |
      for type in kek db; do
        regen=0
        for extra in "extra-${type}"/*.crt; do
          if [ -f "${extra}" ]; then
            base="$(dirname "${extra}")$(basename "${extra}" .crt)"
            owner='%{aemeath-keys-uuid}'
            if [ -f "${base}.owner" ]; then
              owner="$(cat "extra-kek/${base}.owner")"
            fi
            ./cert-to-efi-sig-list -g '${owner}' "${extra}" "${base}.esl"
            case "${type}" in
              kek)
                cat "${base}.esl" >>KEK.esl
                ;;
              db)
                cat "${base}.esl" >>DB.esl
                ;;
            esac
            regen=1
          fi
        done
        if [ "${regen}" = 1 ]; then
          case "${type}" in
            kek)
              ./sign-efi-sig-list -c PK.crt -k PK.key KEK KEK.esl KEK.auth
              ;;
            db)
              ./sign-efi-sig-list -c KEK.crt -k KEK.key db DB.esl DB.auth
              ;;
          esac
        fi
      done

    # Might need some rebuilds
    - |
      %{make}

  install-commands:
    - |
      install -Dm644 -t '%{install-root}%{datadir}/efitools/efi' *.efi
    - |
      install -Dm644 -t '%{install-root}%{datadir}/efitools/efi' {PK,KEK,DB}.auth
    - |
      %{install-extra}

sources:
- kind: git_repo
  url: kernel:linux/kernel/git/jejb/efitools.git
  track: master
  ref: v1.9.2-4-gb988d20a7f8373cf19c30d5c9c459f3e87f28da2
- kind: patch
  path: patches/efitools/c99.patch
- kind: patch
  path: patches/efitools/gnu-efi.patch
- kind: patch
  path: patches/efitools/gcc15.patch
