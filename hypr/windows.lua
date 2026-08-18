-- Custom window rules
-- https://wiki.hypr.land/Configuring/Basics/Window-Rules/

-- Match Obsidian, LM Studio, and Telegram transparency to Kitty terminal (0.90)
o.window("^(md.obsidian.Obsidian|obsidian)$", { opacity = "0.90 0.90" })
o.window("^(LM-Studio|lmstudio)$", { opacity = "0.90 0.90" })
o.window("^(org.telegram.desktop)$", { opacity = "0.90 0.90" })
