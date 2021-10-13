_ƒDIR_=__fish_{config,data,user_data,bin}_dir \
WSLPATH=( string match -v -- '/mnt/*' $PATH ) \
WINPATH=( string match    -- '/mnt/*' $PATH ) \
DIRPATH=( realpath $$_ƒDIR_/{.,*}/ $WSLPATH / \
             /mnt/c/Users/CK/{,*/} $WINPATH ) \
set -x -g CDPATH $DIRPATH
