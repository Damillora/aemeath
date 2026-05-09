kind: import

public:
  bst:
    integration-commands:
    - |
      ldconfig

    - |
      mkdir -p "%{libdir}/locale"
      localedef --no-archive -i en_US -f UTF-8 en_US.UTF-8

sources:
- kind: docker
  image: gentoo/stage3
  track: 20260504
  architecture: "amd64"
  ref: 2eed11050e419edaf3a2f9d1e42f84e1c6b31a5e84c802ae1d3586df2252e8c4
