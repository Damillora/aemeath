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
  ref: vcs-versioning-v2.2.4-0-g100aa30d9d5212a663d286dbb5accdfc3de3310c


