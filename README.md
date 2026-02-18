# Oxide &nbsp; [![bluebuild build badge](https://github.com/notswedishbacon/oxide/actions/workflows/build.yml/badge.svg)](https://github.com/notswedishbacon/oxide/actions/workflows/build.yml)
## Installation
To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/notswedishbacon/oxide:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/notswedishbacon/oxide:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

# Generate ISO from a built and published remote image
```bash
sudo bluebuild generate-iso --iso-name oxide.iso image ghcr.io/notswedishbacon/oxide
```

## Verification
These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:
```bash
cosign verify --key cosign.pub ghcr.io/notswedishbacon/oxide
```

## Cosmic App Icons

To fix cosmic app icons, you may need to update the icon cache. If you have a fresh ISO install, first create the hicolor folder:

```bash
mkdir -p ~/.local/share/icons/hicolor
```

Then update the icon cache and reboot:

```bash
gtk-update-icon-cache -f -t ~/.local/share/icons/hicolor
```
