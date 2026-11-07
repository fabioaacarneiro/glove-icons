#!/bin/sh
# Installs the Glove icon theme for the current user (or into $1).
set -e
dest="${1:-${XDG_DATA_HOME:-$HOME/.local/share}/icons}/Glove"
cd "$(dirname "$0")"
rm -rf "$dest"
mkdir -p "$(dirname "$dest")"
cp -a Glove "$dest"
command -v gtk-update-icon-cache >/dev/null && gtk-update-icon-cache -q -f "$dest" || true
echo "Theme installed to $dest"
