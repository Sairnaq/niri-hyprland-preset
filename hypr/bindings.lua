-- Niri-Style Keybindings for Hyprland on Omarchy
-- Place in ~/.config/hypr/bindings.lua

-- Vertical workspace navigation
hl.unbind("SUPER + UP")
hl.unbind("SUPER + DOWN")
o.bind("SUPER + UP", "Previous workspace", hl.dsp.focus({ workspace = "r-1" }))
o.bind("SUPER + DOWN", "Next workspace", hl.dsp.focus({ workspace = "r+1" }))

-- Move window across vertical workspaces
hl.unbind("SUPER + SHIFT + UP")
hl.unbind("SUPER + SHIFT + DOWN")
o.bind("SUPER + SHIFT + UP", "Move window to workspace above", hl.dsp.window.move({ workspace = "r-1" }))
o.bind("SUPER + SHIFT + DOWN", "Move window to workspace below", hl.dsp.window.move({ workspace = "r+1" }))

-- Close window (Super + Q)
hl.unbind("SUPER + W")
o.bind("SUPER + Q", "Close window", hl.dsp.window.close())

-- Maximize column width (Niri full-width instead of exclusive fullscreen, allows Super + Left/Right navigation)
hl.unbind("SUPER + F")
o.bind("SUPER + F", "Toggle full width column", "omarchy-niri-toggle-fullwidth")

-- Niri Column Stacking / Consume & Expel (Merge or split columns)
hl.unbind("SUPER + ALT + LEFT")
hl.unbind("SUPER + ALT + RIGHT")
o.bind("SUPER + ALT + LEFT", "Stack or unstack with column on left", hl.dsp.layout("consume_or_expel prev"))
o.bind("SUPER + ALT + RIGHT", "Stack or unstack with column on right", hl.dsp.layout("consume_or_expel next"))

-- Niri Preset Width Cycling (33% -> 50% -> 67%)
o.bind("SUPER + R", "Cycle column width preset", hl.dsp.layout("colresize +conf"))
o.bind("SUPER + SHIFT + R", "Cycle column width preset backward", hl.dsp.layout("colresize -conf"))

-- Pop window out (floating & pinned picture-in-picture mode)
hl.unbind("SUPER + SHIFT + O")
o.bind("SUPER + SHIFT + O", "Pop window out (float & pin)", "omarchy-hyprland-window-pop")
