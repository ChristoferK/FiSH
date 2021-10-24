function cd
    not [ -z "$argv" ]
    or set argv $HOME
    builtin cd "$argv"
end
