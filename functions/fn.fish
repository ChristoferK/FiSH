function fn
    ! [ "$argv" ] && basename -s .fish \
        $fish_function_path[1]/*.fish |
        string join -- \40 | fold -sw \
        $COLUMNS && return

    funced ( string escape -- $argv )
    and funcsave "$argv"
end
