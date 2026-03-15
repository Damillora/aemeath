if [ "${1-}" != nopush ]; then
    cat << EOF
artifacts:
  - url: https://aemeath-cache.castorice.my.id
    push: true
    auth:
      client-cert: aemeath.crt
      client-key: aemeath.key
EOF
else
    cat << EOF
artifacts:
  - url: https://aemeath-cache.castorice.my.id
    auth:
      client-cert: aemeath.crt
      client-key: aemeath.key
EOF
fi