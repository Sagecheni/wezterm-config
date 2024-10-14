local wezterm = require 'wezterm'

local config = wezterm.config_builder()

local act = wezterm.action
config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	color_scheme ='Nord (Gogh)',
	font = wezterm.font("ComicShannsMono Nerd Font",{ weight = "Bold" }),
	font_size = 16,
	background = {
		{
			source = {
				File = "/Users/sagechen/Pictures/background/lianhua.jpg",
			},
			hsb = {
				hue = 1.0,
				saturation = 1.02,
				brightness = 0.35,
			},
			attachment = "Fixed",        -- 背景固定在窗口，不随内容滚动
		        vertical_align = "Middle",   -- 垂直方向居中
      			horizontal_align = "Center", -- 水平方向居中
      			width = "Cover",             -- 设置背景图片以cover模式显示
      			height = "Cover",            -- 保持图片宽高比例
		},
		{
			source = {
				Color = "#282c35",
			},
			width = "100%",
			height = "100%",
			opacity = 0.55,
		},
	},
	window_padding = {
		left = 3,
		right =3,
		top = 0,
		bottom = 0,
	},
	mouse_bindings = {
		{
			event = {Up = { streak = 1, button = 'Left'} },
			mods = 'CMD',
			action = act.OpenLinkAtMouseCursor,
		},
	}
}


return config
