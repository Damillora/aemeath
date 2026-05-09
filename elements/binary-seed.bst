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
  track: nomultilib-20260504
  architecture: "amd64"
  ref: 36bd9a80eb18859e2729173c59e75c3d4c388f196b83330d964b316589dce1d0
