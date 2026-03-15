#!/bin/bash

# Read wallpaper path from Waypaper config
wallpaper=$(grep "^wallpaper =" ~/.config/waypaper/config.ini | cut -d'=' -f2 | xargs)

# Expand ~ to full home directory path
wallpaper="${wallpaper/#\~/$HOME}"

# Optional: debug
echo "Using wallpaper path: $wallpaper"

# Copy to Hyprlock
cp "$wallpaper" ~/.config/hypr/hyprlock.jpg
