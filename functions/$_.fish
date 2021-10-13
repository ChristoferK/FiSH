function '$_'
    set --query \
        --local Ø
    or set -l Ø 0
    Ø=(math $Ø + 1) eval $history[$Ø] $argv
end
