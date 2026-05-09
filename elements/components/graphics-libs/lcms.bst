kind: autotools

build-depends:
- components/buildsystems/autotools.bst

depends:
- components/sys-libs/glibc.bst
- components/sys-libs/gcc-libs.bst
- components/graphics-libs/libtiff.bst
- components/graphics-libs/libjpeg-turbo.bst

variables:
  conf-local: >-
    --with-threads
    --with-tiff
    --with-jpeg

public:
  cpe:
    product: little_cms_color_engine
    ignored:
    - CVE-2016-10165

sources:
- kind: git_repo
  url: github:mm2/Little-CMS.git
  track: lcms2.*
  exclude:
  - lcms2.*rc*
  ref: lcms2.19.1-0-g21c582a594fe5279f90c0b93437c398f93bf62b0
