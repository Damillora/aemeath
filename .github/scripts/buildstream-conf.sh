cat << EOF
cache:
  quota: 100G
  reserved-disk-space: 20G

scheduler:
  builders: 1
  pushers: 2

build:
  max-jobs: 4

EOF

if [ "${1-}" != nopush ]; then
    cat << EOF
artifacts:
  servers:
  - url: https://aemeath-local.castorice.my.id
    push: true
EOF
fi
