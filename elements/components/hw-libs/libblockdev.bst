kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-tools/autoconf-archive.bst

depends:
- components/filesystem-util/cryptsetup.bst
- components/filesystem-util/e2fsprogs.bst
- components/util-sys/kmod.bst
- components/util-libs/json-glib.bst
- components/hw-libs/libatasmart.bst
- components/util-libs/libbytesize.bst
- components/hw-libs/libnvme.bst
- components/util-libs/libyaml.bst
- components/filesystem-util/lvm2.bst
- components/filesystem-util/mdadm.bst
- components/filesystem-util/parted.bst
- components/sys-services/systemd.bst
- components/security-tools/volume-key.bst

variables:
  conf-local: >-
    --without-dmraid
    --without-nvdimm
    --with-mdraid
  local_flags: >-
    -Wno-error

sources:
- kind: git_repo
  url: github:storaged-project/libblockdev.git
  track: '*.*'
  ref: 3.5.0-0-g065d6910a0e915dbe633356da7bad9c4b3a2e2b9
