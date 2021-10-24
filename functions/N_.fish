function N_
    set -l R $status

    not [ "$argv" ]
    and return {$R}

    return ( builtin math {$argv,x} 1 )
end
