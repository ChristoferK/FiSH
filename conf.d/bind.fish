bind  --  \n         self-insert
bind  --  \e\[F      end-of-line
bind  --  \e\[H      beginning-of-line
bind  -k  backspace  backward-kill-line
bind  --  \e\[A      history-search-backward
bind  -k  dc         delete-char
bind  -k  end        end-of-line
bind  -k  home       beginning-of-line
bind  --  \x27       \u02C8
bind  --  \#         'commandline -r "$history[1]"'
bind  --  `          'commandline -i ϟ'
bind  --  £          'commandline -i \#'
bind  --  \cz        undo
bind  --  \cy        redo
bind  --  \e\[       backward-char
bind  --  \e\]       forward-char
bind  --  \e\{       backward-bigword
bind  --  \e\}       forward-bigword
bind  --  \e\'       up-line
bind  --  \e\#       down-line
bind  --  \e@        beginning-of-buffer
bind  --  \e\~       end-of-buffer
