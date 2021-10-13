function map
    echo $_
    set -l chars ( string split -- "" $argv )
    not [ "$chars[1]" != \{ ]
    and [ "$chars[-1]" = \} ]
    or return ( err Script must be enclosed in {...} )

    set -l xs
    stdin xs
    set -l N ( count $xs )
    set -l I ( seq   $N  )

    for i in $I
        string replace --all -- @ "$xs[$i]" "$argv" |
            string replace -r -- '^\{' "begin " |
            string replace -r -- '\}$' " ; end" |
            source | read -z -l x
        set xs[$i] (printf %s $x | string collect --)
    end

    set -S xs
end
