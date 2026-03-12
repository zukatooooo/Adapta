#!/bin/bash

input="$HOME/.cache/wal/colors.properties"
output="$HOME/.config/waybar/colors.css"

echo "/* Generated Waybar CSS variables */" > "$output"

while IFS='=' read -r key value; do
    [[ -z "$key" ]] && continue
    echo "@define-color $key $value;" >> "$output"
done < "$input"

echo "CSS variables written to $output"

