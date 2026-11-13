-- hyprland-scroll-overview plugin
-- https://github.com/yayuuu/hyprland-scroll-overview
-- Only loaded when the plugin is present, so a reload without it won't break.
local mainMod = "SUPER"

if hl.plugin and hl.plugin.scrolloverview then
    hl.config({
        plugin = {
            scrolloverview = {
                gesture_distance = 300,
                scale = 0.5,
                workspace_gap  = 100,
                layout = "vertical",
                wallpaper = 2,
                blur = true,
                shadow = {
                    enabled = false,
                    range   = 50,
                },
            },
        },
    })

    -- Toggle the overview with SUPER+G
    hl.bind("SUPER + G", function()
        hl.plugin.scrolloverview.overview("toggle all")
    end)

    -- Arrow-key navigation while the overview is open
    hl.define_submap("scrolloverview", function()
        hl.bind("left",  function() hl.plugin.scrolloverview.navigate("left") end)
        hl.bind("down",  function() hl.plugin.scrolloverview.navigate("down") end)
        hl.bind("up",    function() hl.plugin.scrolloverview.navigate("up") end)
        hl.bind("right", function() hl.plugin.scrolloverview.navigate("right") end)
        hl.bind("return", function()
            hl.plugin.scrolloverview.overview("select")
            hl.plugin.scrolloverview.window("select")
            hl.plugin.scrolloverview.overview("close all")
        end)
        hl.bind("escape", function() hl.plugin.scrolloverview.overview("close all") end)
        hl.bind("mouse:272", function()
            hl.plugin.scrolloverview.overview("select")
            hl.plugin.scrolloverview.window("select")
            hl.plugin.scrolloverview.overview("close all")
        end, { mouse = true })
        hl.bind("mouse:274", function()
            hl.plugin.scrolloverview.window("close")
        end, { mouse = true })
    end)
end
