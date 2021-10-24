function stdin --no-scope-shadowing
    set -l ƒ /tmp/.stdin

    begin
        cat &
    end >$ƒ
    pkill -n -x cat

    set 0 ( cat < $ƒ )

    count $0 | read -l N
    [ $N = 0 ] && return

    for I in ( seq $N )
        set $I $0[$I]
    end
end
