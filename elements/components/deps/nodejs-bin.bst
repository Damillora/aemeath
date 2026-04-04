kind: import
description: Node.js used to build WebEngine

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  target: "%{prefix}"

sources:
- kind: tar
  url: nodejs:v24.14.1/node-v24.14.1-linux-x64.tar.xz
  ref: 84d38715d449447117d05c3e71acd78daa49d5b1bfa8aacf610303920c3322be
