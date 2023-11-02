function code-exts --wraps='code --list-extensions --show-version >> ~tbone/Documents/vsCode/vs-exts.txt open ' --description 'alias code-exts code --list-extensions --show-version >> ~tbone/Documents/vsCode/vs-exts.txt open '
  code --list-extensions --show-version >> ~tbone/Documents/vsCode/vs-exts.txt open  $argv
        
end
