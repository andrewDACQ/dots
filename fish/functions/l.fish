function l --wraps='ll -F --group-directories-first' --wraps='ls -F --group-directories-first' --wraps='ls -F -T -L 4--group-directories-first' --wraps='ls -F -T -L 4 --group-directories-first .' --wraps='exa -F -T -L 1 --icons --group-directories-first .' --description 'alias l exa -F -T -L 1 --icons --group-directories-first .'
  exa -F -T -L 1 --icons --group-directories-first . $argv
        
end
