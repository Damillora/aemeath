kind: pyproject

build-depends:
- components/buildsystems/python.bst

depends:
- components/dev-lang/python3.bst
- components/dev-python3/vcs-versioning.bst
- components/dev-python3/packaging.bst
- components/dev-python3/setuptools.bst

variables:
  strip-binaries: ''

config:
  build-commands:
  - |
    cd setuptools-scm
    %{python} -mbuild %{build-args} .

  install-commands:
  - |
    cd setuptools-scm
    %{python} -minstaller %{dist-dir}/*.whl --destdir %{install-root}

sources:
- kind: git_repo
  url: github:pypa/setuptools-scm.git
  track: setuptools-scm-v*
  exclude:
  - "*dev*"
  - "*vcs-*"
  ref: setuptools-scm-v10.2.1-0-gac108b243380c10de77de32eb696b74d5f5eb63f


