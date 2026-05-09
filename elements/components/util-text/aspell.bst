kind: autotools

build-depends:
- components/buildsystems/autotools.bst
- components/dev-lang/perl.bst
- components/dev-tools/texinfo.bst

depends:
- components/sys-libs/ncurses.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/pspell-config'
  cpe:
    patches:
    - CVE-2019-25051

config:
  install-commands:
    (>):
    - |
      rm "%{install-root}%{infodir}/dir"

sources:
- kind: git_repo
  url: savannah:aspell.git
  track: rel-*
  exclude:
  - 'rel-*-*'
  ref: rel-0.60.8.2-0-g3de79d40aee4e9ccdc0d83856637949801a3d33b
