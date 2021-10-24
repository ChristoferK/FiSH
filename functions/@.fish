function @
    not set --{local,query} ϟ
    and set --{local,} ϟ argv[]=
    and begin
        stdin
        ϟ=1\<\&0\> @ $0
    end

    count $argv | read -l N
    math {+,$pipestatus} && return

    printf %s {$ϟ,\{,\n} 1>&2
    for I in ( seq $N )
        printf %4s $I "" 1>&2
        printf %s $argv[$I]
        printf , 1>&2
        printf \n
    end
    printf %s {\},\n} 1>&2
end
