-- START BOILERPLATE
local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end
-- END BOILERPLATE

-- START CONFIG 
-- theme
config.color_scheme = 'Tokyo Night'

-- base color config 
config.colors = {
   background = 'rgba(0%, 0%, 0%)',
}

-- background opacity
config.window_background_opacity = 0.8

-- font
config.font_size = 13

-- tab bar
config.enable_tab_bar =  false
config.use_fancy_tab_bar = true --default

config.window_frame = {
  font = wezterm.font { family = 'Fira Code Nerd Font Propo', weight = 'Bold'},
  font_size = 11
}

-- terminal wallpaper image 
config.window_background_image = '/Users/andrew/Pictures/Ai Art/DALL·E 2023-05-31 09.39.58 - A photo realistic picture of an astronaut with his head in the clouds.png'

config.window_background_image_hsb = {
  brightness = 0.05,
  hue = 1.0,
  saturation = 1.0,
}

-- END CONFIG
return config
