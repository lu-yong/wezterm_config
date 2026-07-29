local gpu_adapters = require('utils.gpu-adapter')
local platform = require('utils.platform')
local wezterm = require('wezterm')

return {
	front_end = "WebGpu", ---@type 'WebGpu' | 'OpenGL' | 'Software'
  webgpu_power_preference = 'HighPerformance',
  webgpu_preferred_adapter = gpu_adapters:pick_best(),

	-- theme
	color_scheme = "Tokyo Night Moon",

  -- font = wezterm.font 'JetBrains Mono NF',

  font = wezterm.font_with_fallback {
    'JetBrains Mono',
    'Noto Sans CJK JP',
    'Noto Sans CJK KR',
    'Symbols Nerd Font Mono',
    'Noto Color Emoji',
  },

	-- https://github.com/wezterm/wezterm/pull/7095 merge
	window_decorations = platform.is_mac and "INTEGRATED_BUTTONS|RESIZE" or "NONE",
	window_frame = {
		font = wezterm.font('JetBrains Mono'),
		font_size = 14,
	},

	-- cursor
	default_cursor_style = "BlinkingBlock",

	-- font
	font_size = 15,

	-- scrollbar
	enable_scroll_bar = true,

	-- tab bar
	tab_max_width = 30,
	use_fancy_tab_bar = true,
	hide_tab_bar_if_only_one_tab = false,
	switch_to_last_active_tab_when_closing_tab = true,

	-- pane
	inactive_pane_hsb = {
		saturation = 0.9,
		brightness = 0.7,
	},
}
