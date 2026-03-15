#!/bin/bash

# 2️⃣ Reload Waybar
if [ -x ~/.config/waypaper/hooks/waybar.sh ]; then
    ~/.config/waypaper/hooks/waybar.sh
fi

# 3️⃣ Reload SwayNC
if [ -x ~/.config/waypaper/hooks/swaync.sh ]; then
    ~/.config/waypaper/hooks/swaync.sh
fi

# 4️⃣ Update Hyprlock wallpaper
if [ -x ~/.config/waypaper/hooks/hyprlock.sh ]; then
    ~/.config/waypaper/hooks/hyprlock.sh
fi

