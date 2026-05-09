kind: manual

# Use certificates from NSS sources
(@):
- elements/sources/nss-certs.yml

build-depends:
- components/buildsystems/minimal.bst

depends:
- components/security-tools/make-ca.bst

config:
  install-commands:
  - |
    make-ca -D "%{install-root}" -C nss/lib/ckfw/builtins/certdata.txt

public:
  bst:
    integration-commands:
    - |
      trust extract --filter=ca-anchors --format=openssl-directory --overwrite --comment %{sysconfdir}/ssl/certs
      trust extract --filter=ca-anchors --format=pem-bundle --purpose server-auth --overwrite --comment %{sysconfdir}/pki/tls/certs/ca-bundle.crt
      trust extract --filter=ca-anchors --format=pem-bundle --purpose email --overwrite --comment %{sysconfdir}/pki/tls/certs/email-ca-bundle.crt
      trust extract --filter=ca-anchors --format=pem-bundle --purpose code-signing --overwrite --comment %{sysconfdir}/pki/tls/certs/objsign-ca-bundle.crt
      trust extract --filter=ca-anchors --format=java-cacerts --purpose server-auth --overwrite --comment "%{sysconfdir}/pki/tls/java/cacerts"