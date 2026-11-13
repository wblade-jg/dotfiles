#!/usr/bin/env bash
# install.sh — crea symlinks de dotfiles hacia ~/.config/
# Uso: bash install.sh

set -e

DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CONFIG="$HOME/.config"

tools=(hypr waybar rofi kitty nvim)

echo "Instalando dotfiles desde $DOTFILES..."
echo ""

for tool in "${tools[@]}"; do
    target="$CONFIG/$tool"
    source="$DOTFILES/$tool"

    if [ -d "$target" ] && [ ! -L "$target" ]; then
        echo "⚠  Backup: $target → ${target}.bak"
        mv "$target" "${target}.bak"
    fi

    ln -sfn "$source" "$target"
    echo "✓  $target → $source"
done

echo ""
echo "✅ Listo! Abre nvim y ejecuta :Lazy sync para restaurar plugins."
