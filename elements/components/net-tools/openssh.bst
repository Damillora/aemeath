kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/sys-services/linux-pam.bst
- components/sys-libs/openssl.bst

depends:
- components/sys-libs/libxcrypt.bst
- components/sys-libs/systemd-libs.bst # libfido2 depends on udev
- components/security-libs/libfido2.bst

runtime-depends:
- components/util-sys/grep.bst
- components/util-sys/sed.bst

variables:
  sysconfdir: '/etc/ssh'
  conf-local: >-
    --with-mantype=man
    --with-pam
    --with-pam-service=sshd
    --without-zlib-version-check
    --with-pid-dir=/run
    --with-security-key-builtin

config:
  configure-commands:
    (<):
    - |
      cat <<EOF >>"sshd_config"

      Include %{sysconfdir}/sshd_config.d/*.conf
      EOF

    - |
      cat <<EOF >>"ssh_config"

      Include %{sysconfdir}/ssh_config.d/*.conf
      EOF

  install-commands:
    (>):
    - |
      sed 's/#UsePAM.*/UsePAM yes/' -i "%{install-root}%{sysconfdir}/sshd_config"
      install -Dm755 contrib/ssh-copy-id -t "%{install-root}%{bindir}"
      install -Dm644 contrib/ssh-copy-id.1 -t "%{install-root}%{mandir}/man1"

public:
  cpe:
    vendor: 'openbsd'
    ignored:
    - CVE-2007-2768
    - CVE-2023-51767
    - CVE-2025-26465
    - CVE-2025-26466

sources:
- kind: git_repo
  url: github:openssh/openssh-portable.git
  track: V_*
  ref: V_10_4_P1-0-ge8dd756725e8800fcd0b3fd71ee6b4382d1e8fab
  version-guess-pattern: '(\d+)_(\d+)'
