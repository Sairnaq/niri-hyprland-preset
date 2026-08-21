#!/usr/bin/env bash
# ==============================================================================
# Niri-Style Hyprland Preset Installer for Omarchy
# ==============================================================================

set -euo pipefail

TARGET_DIR="$HOME/.config/hypr"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$TARGET_DIR/backup-niri-$(date +%s)"

echo "=== Installing Niri-Style Hyprland Preset ==="

mkdir -p "$TARGET_DIR"

# Create safe backup of existing configs
if [ -f "$TARGET_DIR/looknfeel.lua" ] || [ -f "$TARGET_DIR/input.lua" ] || [ -f "$TARGET_DIR/bindings.lua" ]; then
    echo "Creating backup of existing configs in: $BACKUP_DIR"
    mkdir -p "$BACKUP_DIR"
    [ -f "$TARGET_DIR/looknfeel.lua" ] && cp "$TARGET_DIR/looknfeel.lua" "$BACKUP_DIR/"
    [ -f "$TARGET_DIR/input.lua" ] && cp "$TARGET_DIR/input.lua" "$BACKUP_DIR/"
    [ -f "$TARGET_DIR/bindings.lua" ] && cp "$TARGET_DIR/bindings.lua" "$BACKUP_DIR/"
    echo "$BACKUP_DIR" > "$TARGET_DIR/.last_niri_backup"
fi

# Copy helper scripts
mkdir -p "$HOME/.local/bin"
cp "$SCRIPT_DIR/bin/"* "$HOME/.local/bin/"
chmod +x "$HOME/.local/bin/omarchy-niri-"*

# Copy preset configs
cp "$SCRIPT_DIR/hypr/looknfeel.lua" "$TARGET_DIR/looknfeel.lua"
cp "$SCRIPT_DIR/hypr/input.lua" "$TARGET_DIR/input.lua"
cp "$SCRIPT_DIR/hypr/bindings.lua" "$TARGET_DIR/bindings.lua"

# Reload Hyprland if running
if command -v hyprctl >/dev/null 2>&1; then
    hyprctl reload >/dev/null 2>&1 && echo "Hyprland reloaded successfully!" || true
fi

echo ""
echo "=== Niri Preset Installed Successfully! ==="
echo "Controls cheat sheet:"
echo "  • Super + Left / Right         : Navigate horizontal window ribbon"
echo "  • Super + Up / Down            : Navigate vertically stacked workspaces"
echo "  • Super + Shift + Up / Down    : Move window to workspace above / below"
echo "  • Super + R / Shift + R        : Cycle column width preset (33% -> 50% -> 67%)"
echo "  • Super + [ / ]                : Fine-grained column width resize (thinner / wider by 5%)"
echo "  • Super + M                    : Toggle Center Column vs Side-by-Side View Mode"
echo "  • Super + Alt + Left / Right   : Stack or unstack window columns (consume/expel)"
echo "  • Super + F                    : Maximize column width (Niri full-width)"
echo "  • Super + Q                    : Close active window"
echo "  • 3-finger swipe horizontal    : Glide horizontal window ribbon"
echo "  • 3-finger swipe vertical      : Switch vertical workspaces"
echo ""
echo "To restore previous configs, run ./uninstall.sh"
