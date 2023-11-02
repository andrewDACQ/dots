function ala --description 'alias for "alacritty msg"'
    alacritty msg $argv
end

function alo --description 'Change alacritty opacity' --wraps ala
    ala config window.opacity=$argv
end
