function @
    printf %s\n $argv | cat -n
    set argv
    stdin argv
    printf %s\n $argv | cat -n
end
