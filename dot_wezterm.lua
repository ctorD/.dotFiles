-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_prog = { "pwsh.exe", "-NoLogo" }
-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
-- TODO: Calculate Rows/Cols for screen
config.initial_cols = 120
config.initial_rows = 60

-- or, changing the font size and color scheme.
config.font_size = 10
config.color_scheme = 'catppuccin-macchiato'
config.font = wezterm.font 'JetBrains Mono'


-- Finally, return the configuration to wezterm:
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.93
config.window_decorations = "RESIZE"
config.max_fps = 120
config.prefer_egl = true
config.debug_key_events = true
return config
