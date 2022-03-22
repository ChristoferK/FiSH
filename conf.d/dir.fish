set -xg CDPATH $__fish_config_dir{,/conf.d,/functions} ~ \
               ~/{.,}* {/usr{/local,},}/bin {/usr,}/sbin \
               $fish_function_path[2..] $__fish_bin_dir