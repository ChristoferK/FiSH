set -l  FiSHPATHS __fish_{config_dir{,/conf.d},bin_dir}
set -xg CDPATH /usr{/local,}/bin \
               /bin {/usr,}/sbin \
               $HOME{,/Library}  \
               $$FiSHPATHS       \
               $fish_function_path
