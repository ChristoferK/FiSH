set USER                             CK
set SHELL                            /usr/local/bin/fish
set FISH_VERSION                     ( $SHELL --version |
                                       string   replace \
                                         --{all,regex,} \
                                           '[^0-9.]' ''
                                     ) &>/dev/null
set HOME                             /Users/$USER
set HOMEBREW_NO_AUTO_UPDATE          1
set IFS                              \n\ \t
set LANG                             en_GB.UTF-8
set LOGNAME                          $USER
set TERM                             xterm-256color
set VIRTUAL_ENV_DISABLE_PROMPT       true
set --path XDG_CONFIG_DIRS           /etc/xdg
set        XDG_CONFIG_HOME           $HOME/.config
set --path XDG_DATA_DIRS             /usr{/local,}/share
set        XDG_DATA_HOME             $HOME/.local/share
set        XDG_STATE_HOME            $HOME/.local/state
set XPC_FLAGS                        0x0
set XPC_SERVICE_NAME                 0
set __CF_USER_TEXT_ENCODING          0x0:0:2
set __fish_active_key_bindings       fish_default_key_bindings
set __fish_cellar_dir                /usr/local/Cellar/fish
set __fish_version_dir               $__fish_cellar_dir/$FISH_VERSION
set __fish_bin_dir                   $__fish_version_dir/bin
set __fish_config_dir                $XDG_CONFIG_HOME/fish
set __fish_config_interactive_done
set __fish_data_dir                  $__fish_version_dir/share/fish
set __fish_git_prompt_showupstream   auto
set __fish_help_dir                  $__fish_version_dir/share/doc/fish
set __fish_initialized               3100
set __fish_last_bind_mode            default
set __fish_locale_vars               LANG LC_{ALL,COLLATE,CTYPE,MESSAGES} \
                                          LC_{MONETARY,NUMERIC,TIME}
set __fish_machine
set __fish_prompt_status_generation  92
set __fish_sysconf_dir               $__fish_version_dir/etc/fish
set __fish_user_data_dir             $XDG_DATA_HOME/fish
set fish_bind_mode                   default
set fish_color_autosuggestion        555  brblack
set fish_color_cancel                -r
set fish_color_command               brblue
set fish_color_comment               brblack
set fish_color_cwd                   bryellow  --italic
set fish_color_cwd_root              red
set fish_color_end                   009900
set fish_color_error                 ff0000
set fish_color_escape                cyan
set fish_color_hg_added              green
set fish_color_hg_clean              green
set fish_color_hg_copied             magenta
set fish_color_hg_deleted            red
set fish_color_hg_dirty              red
set fish_color_hg_modified           yellow
set fish_color_hg_renamed            magenta
set fish_color_hg_unmerged           red
set fish_color_hg_untracked          yellow
set fish_color_history_current       --bold
set fish_color_host                  55ddff  --underline
set fish_color_host_remote           yellow
set fish_color_match                 --background=brblue
set fish_color_normal                normal
set fish_color_operator              1ffcfa
set fish_color_param                 brmagenta
set fish_color_quote                 ffaa0f
set fish_color_redirection           00afff
set fish_color_search_match          bryellow  --background=brblack
set fish_color_selection             white --background=brred
set fish_color_status                red
set fish_color_user                  green  --underline
set fish_color_valid_path            --underline
set fish_complete_path               $__fish_config_dir/completions \
                                     $__fish_version_dir/etc/fish/completions \
                                     $__fish_version_dir/share/fish/vendor_completions.d \
                                     /usr/local/share/fish/vendor_completions.d \
                                     $__fish_version_dir/share/fish/completions \
                                     $__fish_user_data_dir/generated_completions

set fish_function_path               $__fish_config_dir/functions \
                                     $__fish_version_dir/etc/fish/functions \
                                     $__fish_version_dir/share/fish/vendor_functions.d \
                                     /usr/local/share/fish/vendor_functions.d \
                                     $__fish_version_dir/share/fish/functions

set fish_greeting                    The \e\[35mF\e\[0mriendly    \
                                         \e\[35mI\e\[0mnteractive \
                                         \e\[35mSH\e\[0mell
set fish_handle_reflow               1
set fish_key_bindings                fish_default_key_bindings
set fish_prompt_hg_status_added      ✚
set fish_prompt_hg_status_copied     ⇒
set fish_prompt_hg_status_deleted    ✖
set fish_prompt_hg_status_modified   '*'
set fish_prompt_hg_status_order      added   modified  copied \
                                     deleted untracked unmerged
set fish_prompt_hg_status_unmerged   !
set fish_prompt_hg_status_untracked  '?'
set fish_user_paths                  $HOME $fish_function_path         \
                                     {/usr,}/sbin {/usr{/local,},}/bin \
                                     $__fish_config_dir{,conf.d}       \ $__fish_bin_dir
set umask                            0022
###
set BLOCKS                           begin case else \
                                     for function    \
                                     if switch while
set CDPATH                           $__fish_config_dir{,/conf.d,/functions} ~ \
                                     ~/{.,}* {/usr{/local,},}/bin {/usr,}/sbin \
                                     $fish_function_path[2..] {$__fish_bin_dir}
set HEXCHARS                         ( printf %04X\\n (
                                          seq 55295 ) )
set SIGNALS                          ( command kill -l |
                                       string match -a \
                                              -r '\H+' )
set SIG                              $SIGNALS
set TOKENS                           '!#$"\'%&()*-.;<>?[]^|~'
set UNICHARS
set FS                               ( printf '%b' \\u{$HEXCHARS} |
                                       read   -z -d "" -a UNICHARS
                                       printf '%b' \\u2060 )
