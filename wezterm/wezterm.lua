-- START BOILERPLATE
local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end
-- END BOILERPLATE

-- Spawn a fish shell in login mode
config.default_prog = { '/usr/local/bin/fish', '-l' }

-- theme
config.color_scheme = 'tokyonight_storm'
-- background opacity
config.window_background_opacity = 0.8

config.colors = {
  background = 'rgba(0%, 0%, 0%)',
  tab_bar = {
    inactive_tab_edge = '#575000',
    background = '#000000',
  },
}

-- font
config.font = wezterm.font {family = 'FiraCode Nerd Font'}
config.font_size = 18

-- tab bar
config.enable_tab_bar = true -- default 
config.use_fancy_tab_bar = true --default
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true

config.window_frame = {
  font = wezterm.font { family = 'Fira Code Nerd Font', weight = 'Bold'},
  font_size = 14
}

-- terminal wallpaper image 
-- config.window_background_image = 'Users/andrew/Pictures/Ai Art/diamonds/Aye_A_diamond_logo_with_an_all-seeing_eye_at_the_apex_of_the_di_7fb9715f-6160-4bba-81ff-c73c4440b26f.png'
-- config.window_background_image_hsb = {
--   brightness = 0.05,
--   hue = 1.0,
--   saturation = 1.0,
-- }

return config
