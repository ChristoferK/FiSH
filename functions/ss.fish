function ss
    set --local subs ( string replace -r -f \
                   -- '(?x)^ \{ \h* (.+ )
                         \h* \| \h* (.*?)
                         \h* \} $
                    ' 's/$1/$2/g' $argv | 
                   string collect --    )
    set --local file ( string match   -v -- \
                          "{*}"   $argv )

    sed -i $subs $file
end
