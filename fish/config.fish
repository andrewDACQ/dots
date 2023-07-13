starship init fish | source  
zoxide init fish | source 

if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    fish_vi_key_bindings
end

# pnpm
set -gx PNPM_HOME "/Users/andrew/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end