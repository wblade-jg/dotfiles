# dotfiles

Mis configuraciones personales para entorno Linux (Hyprland).

## Estructura

- **hypr**: Configuración de [Hyprland](https://hyprland.org/), bindings, scripts de brillo/volumen/batería, y fondos.
- **waybar**: Barra de estado modular con estilos y scripts de clima, bluetooth, wifi y power-menu.
- **rofi**: Lanzador de aplicaciones, temas (eink, omori, etc.) y selector de modos.
- **kitty**: Terminal emulator con configuración de fuentes y esquemas.
- **nvim**: Configuración de Neovim basada en NvChad / Lazy.nvim con soporte LSP, DAP y temas personalizados.

## Instalación

```bash
git clone git@github.com:wblade-jg/dotfiles.git ~/dotfiles
cd ~/dotfiles
bash install.sh
```

El script creará enlaces simbólicos (`symlinks`) apuntando a `~/.config/` y respaldará cualquier configuración previa en `<nombre>.bak`.
