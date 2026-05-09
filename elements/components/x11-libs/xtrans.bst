kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/x11-tools/xorgproto.bst

sources:
- kind: git_repo
  url: freedesktop:xorg/lib/libxtrans.git
  track: xtrans-*
  ref: xtrans-1.6.0-0-gcf05ba4a10c90da2c63805a5375e983b174e28b0
