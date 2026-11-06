#!/bin/sh
# Instala o tema de ícones Glove na pasta do usuário (ou em $1).
set -e
dest="${1:-${XDG_DATA_HOME:-$HOME/.local/share}/icons}/Glove"
cd "$(dirname "$0")"
rm -rf "$dest"
mkdir -p "$(dirname "$dest")"
cp -a Glove "$dest"
command -v gtk-update-icon-cache >/dev/null && gtk-update-icon-cache -q -f "$dest" || true
echo "Tema instalado em $dest"
