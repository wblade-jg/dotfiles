-- Autostart: wallpaper, idle/lock, bar, notifications

hl.on("hyprland.start", function()
    -- Load plugins
    hl.exec_cmd("hyprpm reload 2>/dev/null")
    -- Wallpaper (hyprpaper) + lock/idle daemon
    hl.exec_cmd("pkill -x hyprpaper 2>/dev/null; hyprpaper")
    hl.exec_cmd("pkill -x hypridle 2>/dev/null; hypridle")
    -- Bar + notifications (mako replaces dunst)
    hl.exec_cmd("killall waybar 2>/dev/null; waybar")
    hl.exec_cmd("pkill -x mako 2>/dev/null; mako")
    hl.exec_cmd("pkill -f battery-notify.sh 2>/dev/null; ~/.config/hypr/scripts/battery-notify.sh &")
end)
