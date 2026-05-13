kind: make
description: The Linux kernel

build-depends:
- components/buildsystems/minimal.bst
- components/sys-devel/bison.bst
- components/sys-devel/flex.bst
- components/util-sys/bc.bst
- components/util-archive/gzip.bst
#- freedesktop-sdk.bst:components/pahole.bst
- components/dev-lang/python3.bst
- components/net-tools/rsync.bst
- components/dev-lang/rust.bst
- components/dev-rust/rust-bindgen.bst
- components/util-sys/util-linux.bst
- components/util-archive/zstd.bst
- components/dev-lang/rust-src.bst
- filename: components/boot/linux-module-cert.bst
  strict: true

variables:
  bootdir: /boot
  kernel_arch: 'x86_64'
  src-arch: 'x86'
  image-name: '$(make -s image_name)'
  optimize-debug: false

environment:
  ARCH: '%{kernel_arch}'
  # compile.h has hardcoded timestamp, let's seed it
  KBUILD_BUILD_TIMESTAMP: 'Thu Feb 05 03:00:00 UTC 2026'
  KBUILD_BUILD_USER: 'aemeath'
  MAXJOBS: "%{max-jobs}"

environment-nocache:
- MAXJOBS

config:
  configure-commands:
  - |
    # Generate the default kernel config for the target architecture
    make defconfig

  - |
    . ./config-utils.sh
    rm -f expected-configs
    . ./fdsdk-config.sh "%{arch}"

  - |
    make -j1 olddefconfig

  - |
    . ./config-utils.sh

    missing_configs=0
    for config in $(cat expected-configs); do
      if ! has "${config}"; then
        echo "Missing ${config}" 1>&2
        missing_configs=1
      fi
    done
    # Only fail for...
    case "%{arch}" in
      x86_64|aarch64)
        [ "${missing_configs}" = 0 ]
      ;;
    esac

  install-commands:
  - |
    install -Dm644 "%{image-name}" '%{install-root}%{bootdir}/vmlinuz'
    install -Dm644 vmlinux '%{install-root}%{bootdir}/vmlinux'
    install -Dm644 System.map '%{install-root}%{bootdir}/System.map'
    install -Dm644 .config '%{install-root}%{bootdir}/config'
    make -j1 INSTALL_MOD_PATH='%{install-root}%{prefix}' modules_install

  - |
    release=$(make -s kernelrelease)
    targetdir="%{install-root}%{prefix}/src/linux-${release}"

    rm "%{install-root}%{indep-libdir}/modules/${release}"/build

    to_copy=(
      Makefile
      Module.symvers
      .config
      "arch/%{src-arch}/include"
      "arch/%{src-arch}/Makefile"
      scripts
      include
    )
    if [ "$(scripts/config -s OBJTOOL)" = y ]; then
      to_copy+=(tools/objtool/objtool)
    fi
    for file in "${to_copy[@]}"
    do
      targetfile="${targetdir}/${file}"
      dir="$(dirname "${targetfile}")"
      [ -d "${dir}" ] || install -d "${dir}"
      cp -aT "${file}" "${targetfile}"
    done

    ln -sr "${targetdir}" "%{install-root}%{indep-libdir}/modules/${release}/build"

  - |
    %{install-extra}

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bootdir}/System.map'
    overlap-whitelist:
    - "%{project_licensedir}"
    - "%{project_licensedir}/**"

sources:
- kind: git_repo
  url: kernel:linux/kernel/git/stable/linux.git
  track: v*
  exclude:
  - '*-rc*'
  ref: v7.0.12-0-gf53879e2e1e2fa053040e734c1ef8f386109a61b
- kind: patch_queue
  path: patches/linux
- kind: local
  path: files/linux/config-utils.sh
- kind: local
  path: files/linux/fdsdk-config.sh
