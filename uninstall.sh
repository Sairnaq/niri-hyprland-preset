#!/usr/bin/env bash
# ==============================================================================
# Niri-Style Hyprland Preset Uninstaller / Restore Script
# ==============================================================================

set -euo pipefail

TARGET_DIR="$HOME/.config/hypr"

echo "=== Restoring Previous Hyprland Configuration ==="

if [ -f "$TARGET_DIR/.last_niri_backup" ]; then
    BACKUP_DIR="$(cat "$TARGET_DIR/.last_niri_backup")"
    if [ -d "$BACKUP_DIR" ]; then
        echo "Restoring from backup: $BACKUP_DIR"
        [ -f "$BACKUP_DIR/looknfeel.lua" ] && cp "$BACKUP_DIR/looknfeel.lua" "$TARGET_DIR/looknfeel.lua"
        [ -f "$BACKUP_DIR/input.lua" ] && cp "$BACKUP_DIR/input.lua" "$TARGET_DIR/input.lua"
        [ -f "$BACKUP_DIR/bindings.lua" ] && cp "$BACKUP_DIR/bindings.lua" "$TARGET_DIR/bindings.lua"
        rm -f "$TARGET_DIR/.last_niri_backup"
        
        if command -v hyprctl >/dev/null 2>&1; then
            hyprctl reload >/dev/null 2>&1 && echo "Hyprland reloaded successfully!" || true
        fi
        echo "Restoration complete!"
        exit 0
    fi
fi

echo "No backup record found in $TARGET_DIR/.last_niri_backup."
echo "Please restore your files manually if needed."
