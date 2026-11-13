-- Look & feel — e-ink palette (github.com/e-ink-colorscheme)
-- #CCCCCC #A4A4A4 #7C7C7C #545454
-- #C2C2C2 #9A9A9A #727272 #4A4A4A
-- #B8B8B8 #909090 #686868 #474747
-- #AEAEAE #868686 #5E5E5E #333333

hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 10,

        border_size = 2,

        col = {
            active_border   = "rgba(000000ff)",
            inactive_border = "rgba(595959aa)",
        },

        resize_on_border = true,

        allow_tearing = false,

        layout = "master",
    },

    decoration = {
        rounding       = 0,
        rounding_power = 2,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,
        
        shadow = {
            enabled        = true,
            sharp          = true,
            range          = 0,
            render_power   = 1,
            color          = "rgba(000000ff)",
            color_inactive = "rgba(595959ff)",
            offset         = { 5, 5 },
        },
        
        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})

-- Simple ease-out slide (z0xca style)
hl.curve("ease_out", { type = "bezier", points = { {0.2, 1}, {0.6, 1} } })

hl.animation({ leaf = "windows",       enabled = true, speed = 4, bezier = "ease_out", style = "slide" })
hl.animation({ leaf = "windowsIn",     enabled = true, speed = 4, bezier = "ease_out", style = "slide" })
hl.animation({ leaf = "windowsOut",    enabled = true, speed = 4, bezier = "ease_out", style = "slide" })
hl.animation({ leaf = "windowsMove",   enabled = true, speed = 4, bezier = "ease_out", style = "slide" })
hl.animation({ leaf = "workspaces",    enabled = true, speed = 4, bezier = "ease_out" })
hl.animation({ leaf = "border",        enabled = false })

hl.config({
    dwindle = {
        preserve_split = true,
    },
})

hl.config({
    master = {
        new_status = "master",
    },
})

hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

hl.config({
    misc = {
        force_default_wallpaper     = 0,
        disable_hyprland_logo       = true,
        disable_splash_rendering    = true,
        mouse_move_enables_dpms     = true,
    },
})
