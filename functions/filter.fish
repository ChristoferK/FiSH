function filter
    set -l chars ( string split -- "" $argv )
    not [ "$chars[1]" != \{ ]
    and [ "$chars[-1]" = \} ] || return ( 
err Script must be enclosed in {...} )

    set argv ( string replace -r -- '^\{' "begin " "$argv" |
           string replace -r -- '\}$' " ; end" |
           string join -- \n | string collect -- )

    stdin

    set -l _N ( count $0 )
    set -l _I ( seq  $_N )

    for I in $_I
        string replace --all -- @ "$$I" "$argv" |
            source &>/dev/null || set -e $I
    end

    printf %s\n $$_I
end
