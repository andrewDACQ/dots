function clist --wraps='cargo --list' --description 'alias clist cargo --list'
  cargo --list $argv
        
end
