function path
    not set -q -l n
    and set -l n 1
    fs=$CDPATH/{,*}"$argv"*{/,} printf %s\n $fs[1..$n]
end
