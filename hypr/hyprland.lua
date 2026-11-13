-- Hyprland config — e-ink (inspired by z0xca/dotfiles)
-- Split into modules; each require() is an isolated scope.

hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

require("theme")
require("input")
require("autostart")
require("keybinds")
require("rules")
require("plugins")
