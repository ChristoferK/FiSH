function cd
    not [ -z "$argv" ]
    or set argv $HOME
    not [ -e "$argv" ]
    and wslpath "$argv" |
        read argv

    builtin cd $argv
end
