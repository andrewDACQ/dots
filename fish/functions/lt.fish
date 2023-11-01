function lt --wraps='l -T -D 1' --wraps='l -T -d 1' --wraps='l -T -d=1' --wraps='l -T -d="1"' --wraps='l -T -D="1"' --wraps='l -T -L -- ' --wraps='l -T -L 1 . ' --wraps='l -T -L 4 . ' --wraps='exa -F -T -L 2 --icons --group-directories-first .' --description 'alias lt exa -F -T -L 2 --icons --group-directories-first .'
  exa -F -T -L 2 --icons --group-directories-first . $argv
        
end
