function pbcopy
    stdin
    printf %s\n "$argv" $0 |
        command pbcopy
end
