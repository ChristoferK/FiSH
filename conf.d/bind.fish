fish_default_key_bindings
bind -- \n         self-insert
bind -- \e\[F      end-of-line
bind -- \e\[H      beginning-of-line
bind -k backspace  backward-kill-line
bind -- \e\[A      up-or-search
bind -k dc         delete-char
bind -k end        end-of-line
bind -k home       beginning-of-line
bind -- \x27       \u02C8
bind -- \#         'commandline -r "$history[1]"'
bind -- `          'commandline -i ϟ'
bind -- £          'commandline -i \#'
bind -- \cz        undo
bind -- \cy        redo
bind -- \e\[13\;2u 'commandline -i \n'
bind -- \e\[32\;2u 'commandline -i \ '
bind -- ∫          'commandline -i ʃ'
bind -- ∑          'commandline -i Ʃ'
bind -- ß          'commandline -i ʃ'
bind -- Í          'commandline -i Ʃ'
bind -- \es        'commandline -i ʃ'
bind -- \eS        'commandline -i Ʃ'

bind -M math '('   'commandline -i （'
bind -M math ')'   'commandline -i ）'
bind -M math '*'   'commandline -i ×'
bind -M math '/'   'commandline -i ÷'
bind -M math '-'   'commandline -i −'
