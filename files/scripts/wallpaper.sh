#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
ln -sf /usr/share/wallpapers/oxide/default.jxl /usr/share/backgrounds/default.jxl
ln -sf /usr/share/wallpapers/oxide/default-dark.jxl /usr/share/backgrounds/default-dark.jxl