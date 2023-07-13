function wv --wraps='wezterm start -- v .' --wraps='wezterm start -- nvim .' --wraps='wezterm start --cwd . -- nvim ' --description 'alias wv wezterm start --cwd . -- nvim '
  wezterm start --cwd . -- nvim  $argv
        
end
