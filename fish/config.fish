if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    fish_vi_key_bindings
    starship init fish | source
    zoxide init fish | source
end

function warp
    command warp $argv; and source (warp env)
end

# pnpm
set -gx PNPM_HOME /Users/andrew/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# ensure that brew is properly configured
set -gx PATH /opt/homebrew/bin $PATH
