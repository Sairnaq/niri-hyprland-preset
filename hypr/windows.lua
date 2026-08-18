-- Custom window rules
-- https://wiki.hypr.land/Configuring/Basics/Window-Rules/

-- Match Obsidian, LM Studio, Telegram, and Discord transparency to Kitty terminal (0.90)
o.window("^(md.obsidian.Obsidian|obsidian)$", { opacity = "0.90 0.90" })
o.window("^(LM-Studio|lmstudio)$", { opacity = "0.90 0.90" })
o.window("^(org.telegram.desktop)$", { opacity = "0.90 0.90" })
o.window("^(brave-discord.*|discord|Discord|vesktop)$", { opacity = "0.90 0.90" })
o.window("^(brave-origin|brave-browser)$", { opacity = "0.95 0.95" })
