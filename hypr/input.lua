-- Niri-Style Input & Gestures for Hyprland on Omarchy
-- Place in ~/.config/hypr/input.lua

-- Pointer behavior
hl.config({
  input = {
    follow_mouse = 1,
    touchpad = {
      natural_scroll = true,
    },
  },
})

-- 3-Finger Vertical Swipe: Switch vertically stacked workspaces
hl.gesture({ fingers = 3, direction = "vertical", action = "workspace" })

-- 3-Finger Horizontal Swipe: Scroll along the infinite window ribbon
hl.gesture({ fingers = 3, direction = "horizontal", action = "scroll_move" })
