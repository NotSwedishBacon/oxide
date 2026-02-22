#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Symlink all default wallpaper locations
ln -sf /usr/share/wallpapers/oxide/default.jxl /usr/share/backgrounds/default.jxl
ln -sf /usr/share/wallpapers/oxide/default-dark.jxl /usr/share/backgrounds/default-dark.jxl
ln -sf /usr/share/wallpapers/oxide/default.jxl /usr/share/backgrounds/images/default.jxl
ln -sf /usr/share/wallpapers/oxide/default-dark.jxl /usr/share/backgrounds/images/default-dark.jxl
ln -sf /usr/share/wallpapers/oxide/default.jxl /usr/share/backgrounds/images/default-5_4.jxl
ln -sf /usr/share/wallpapers/oxide/default-dark.jxl /usr/share/backgrounds/images/default-dark-5_4.jxl
ln -sf /usr/share/wallpapers/oxide/default.jxl /usr/share/backgrounds/images/default-16_9.jxl
ln -sf /usr/share/wallpapers/oxide/default-dark.jxl /usr/share/backgrounds/images/default-dark-16_9.jxl
ln -sf /usr/share/wallpapers/oxide/default.jxl /usr/share/backgrounds/images/default-16_10.jxl
ln -sf /usr/share/wallpapers/oxide/default-dark.jxl /usr/share/backgrounds/images/default-dark-16_10.jxl
