function err
    string match --quiet --regex \
        -- "^[-+]\K\d+" $argv[1]
    or set --prepend argv 1
    printf %b "$argv[2..]" 1>&2
    return $argv[1]
end
