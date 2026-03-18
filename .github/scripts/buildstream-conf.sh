cat << EOF
scheduler:
  builders: 1
  pusher: 4

build:
  max-jobs: 8

EOF

if [ "${1-}" != nopush ]; then
    cat << EOF
artifacts:
  servers:
  - url: https://aemeath-cache.castorice.my.id
    push: true
    auth:
      client-cert: aemeath.crt
      client-key: aemeath.key
EOF
fi