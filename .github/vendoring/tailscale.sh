git clone https://github.com/tailscale/tailscale.git
cd tailscale
tailscale_version=$(git describe --tags $(git rev-list --tags --max-count=1))
git checkout $tailscale_version
go mod vendor
tar cJf "./tailscale-${tailscale_version}-vendor.tar.xz" -C vendor  .