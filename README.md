# oxide &nbsp; [![bluebuild build badge](https://github.com/notswedishbacon/oxide/actions/workflows/build.yml/badge.svg)](https://github.com/notswedishbacon/oxide/actions/workflows/build.yml)

See the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.

After setup, it is recommended you update this README to describe your custom image.

## Cosmic App Icons

To fix cosmic app icons, you may need to update the icon cache. If you have a fresh ISO install, first create the hicolor folder:

```bash
mkdir -p ~/.local/share/icons/hicolor
```

Then update the icon cache:

```bash
gtk-update-icon-cache -f -t ~/.local/share/icons/hicolor
```