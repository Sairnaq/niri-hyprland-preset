# Niri-Style Preset for Hyprland (Omarchy)

Transform your **Hyprland** desktop on **Omarchy** into an **infinite horizontal ribbon layout with vertical workspaces**, identical to the **Niri Wayland Compositor**.

---

## 🌟 Key Features

1. **Infinite Horizontal Window Tape**:
   - Windows tile side-by-side on an endless horizontal strip.
   - Default 50% screen width per column with instant auto-centering on the active window.

2. **Orthogonal 2D Workspace Model**:
   - **Horizontal axis**: Infinite window strip.
   - **Vertical axis**: Separate stacked workspaces with smooth vertical slide transitions.

3. **Column Stacking (Consume & Expel)**:
   - Merge neighboring windows into vertical columns or pop them out.

4. **1:1 Touchpad Gestures**:
   - **3-Finger Horizontal Swipe**: Smoothly pan the horizontal window ribbon.
   - **3-Finger Vertical Swipe**: Switch between vertical workspaces.

5. **Column Width Presets**:
   - Quickly cycle between **33%**, **50%**, and **67%** column widths.

---

## ⚡ Quick Install

Clone or copy this folder to your machine, then run:

```bash
chmod +x install.sh uninstall.sh
./install.sh
```

The installer automatically creates a timestamped backup of your previous configs before applying the preset.

To revert anytime:
```bash
./uninstall.sh
```

---

## ⌨️ Keybindings Cheat Sheet

### Workspace & Window Navigation
| Shortcut | Action |
| :--- | :--- |
| **`Super + Left` / `Right`** | Focus window left / right along the horizontal tape |
| **`Super + Up` / `Down`** | Switch to the workspace above / below |
| **`Super + Shift + Up` / `Down`** | Move the active window to the workspace above / below |
| **`Super + Shift + 1` … `9`** | Move active window to workspace 1–9 |

### Niri Column Controls
| Shortcut | Action |
| :--- | :--- |
| **`Super + R`** | Cycle column width preset forward (`33%` → `50%` → `67%`) |
| **`Super + Shift + R`** | Cycle column width preset backward |
| **`Super + Alt + Left`** | Merge with / expel from column on left (Niri consume/expel) |
| **`Super + Alt + Right`** | Merge with / expel from column on right |
| **`Super + F`** | Maximize column width (Niri full-width instead of exclusive fullscreen) |

### Window Management
| Shortcut | Action |
| :--- | :--- |
| **`Super + Q`** | Close focused window |
| **`Super + Shift + O`** | Pop out window into floating & pinned Picture-in-Picture mode |

### Touchpad Gestures
| Gesture | Action |
| :--- | :--- |
| **3-Finger Horizontal Swipe** | Pan the horizontal window ribbon |
| **3-Finger Vertical Swipe** | Glide between vertical workspaces |

---

## 📁 File Structure

```
niri-preset-hyprland/
├── hypr/
│   ├── looknfeel.lua   # Scrolling layout, width presets, animations, rounding
│   ├── input.lua       # Natural scroll, follow_mouse, 3-finger gestures
│   └── bindings.lua    # Niri keybindings & window management
├── install.sh          # Safe installer with automatic backup
├── uninstall.sh        # One-click restore script
└── README.md           # Documentation & cheat sheet
```
