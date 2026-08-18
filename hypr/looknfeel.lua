-- Niri-Style Look 'n' Feel for Hyprland on Omarchy
-- Place in ~/.config/hypr/looknfeel.lua

-- General Layout & Spacing
hl.config({
  general = {
    -- Niri-style spacing & infinite horizontal ribbon
    gaps_in = 4,
    gaps_out = 4,
    border_size = 2,
    layout = "scrolling",
    col = {
      active_border = { colors = { "rgb(7fa961)", "rgb(8db86b)" }, angle = 45 },
      inactive_border = "rgba(404a4088)",
    },
  },

  decoration = {
    rounding = 12,
    blur = {
      enabled = true,
      size = 8,
      passes = 3,
      new_optimizations = true,
    },
    shadow = {
      enabled = true,
      range = 30,
      render_power = 2,
      offset = { 0, 5 },
    },
  },
})

-- Niri Scrolling Layout Configuration
-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
hl.config({
  scrolling = {
    -- Match Niri's 50% default column width and 33%/50%/67% width presets
    column_width = 0.5,
    explicit_column_widths = "0.33333,0.5,0.66667",
    fullscreen_on_one_column = false,
    -- 0 = Auto-center active column into viewport (Niri behavior)
    focus_fit_method = 0,
  },
})

-- Separate 2D coordinates: Workspaces transition vertically
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "easeOutQuint", style = "slidevert" })
