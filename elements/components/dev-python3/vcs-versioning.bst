kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst
- components/dev-tools/git.bst
- components/dev-python3/packaging.bst

variables:
  strip-binaries: ''

config:
  build-commands:
  - |
    cd vcs-versioning
    %{python} -mbuild %{build-args} .

  install-commands:
  - |
    cd vcs-versioning
    %{python} -minstaller %{dist-dir}/*.whl --destdir %{install-root}

sources:
- kind: git_repo
  url: github:pypa/setuptools-scm.git
  track: vcs-versioning-v*
  ref: vcs-versioning-v2.3.0-0-g8ee692f6b962745ac1f083a4abd1bea96eacb9d3


