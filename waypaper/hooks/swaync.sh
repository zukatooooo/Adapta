#!/bin/bash

PROPS="$HOME/.cache/wal/colors.properties"

CSS_OUT="$HOME/.config/swaync/colors.css"

# 1️⃣ Generate RGB variables from colors.properties
echo ":root {" > "$CSS_OUT"
while IFS='=' read -r name hex; do
    [[ -z "$hex" ]] && continue
    [[ "$name" != color* ]] && continue
    hex="${hex/#\#/}"
    r=$((16#${hex:0:2}))
    g=$((16#${hex:2:2}))
    b=$((16#${hex:4:2}))
    echo "  --$name: $r,$g,$b;" >> "$CSS_OUT"
done < "$PROPS"
echo "}" >> "$CSS_OUT"

echo "✅ RGB variables generated in $CSS_OUT"

# 3️⃣ Restart SwayNC daemon
pkill swaync
swaync -d &

echo "✅ SwayNC restarted with new colors"
