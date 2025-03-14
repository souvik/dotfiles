local wezterm = require("wezterm")
local config = {}

config.adjust_window_size_when_changing_font_size = false
config.macos_window_background_blur = 30
config.native_macos_fullscreen_mode = true
config.window_background_opacity = 1.0
config.window_decorations = "RESIZE"
config.enable_tab_bar = false

config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font_size = 12

config.color_scheme = "Catppuccin Mocha"

config.keys = {
	{
		key = "Enter",
		mods = "SUPER",
		action = wezterm.action.ToggleFullScreen,
	},
}

return config
