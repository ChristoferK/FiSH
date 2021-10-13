function stdin --no-scope-shadowing
    stat -L -c %T - | read -l T
    [ "$T" = 0 ] || return $T

    set -l _var $argv
    set -l -e argv

    read -z -d \n {-a,$_var}

    [ "$_var" ] || return 0

    set -e {$_var}[-1]
    count $$_var | read -l N
    [ "$N" = 1 ] || return $N
    printf %s $$_var | read -at $_var
end
