-- Window and layer rules

local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- rofi launcher floating, centered
hl.window_rule({
    name  = "eink-rofi",
    match = { class = "^(rofi|Rofi)$" },

    float  = true,
    center = true,
})

-- Terminal flotante: 1/4 de pantalla (50% ancho x 50% alto), centrada
hl.window_rule({
    name   = "kitty-quarter-floating",
    match  = { class = "^(kitty)$" },
    float  = true,
    size   = "50% 50%",
    center = true,
})

-- Blur behind the translucent waybar layer
hl.layer_rule({
    name  = "eink-waybar-blur",
    match = { namespace = "waybar" },
    blur  = true,
})

-- Blur behind the rofi launcher layer
hl.layer_rule({
    name  = "eink-rofi-blur",
    match = { namespace = "rofi" },
    blur  = true,
})
