not status is-interactive
and exit -1

fish_default_key_bindings

bind  --  \n            self-insert
bind  --  \e\[F         end-of-line
bind  --  \e\[H         beginning-of-line
bind  -k  backspace     backward-delete-char
bind  --  \e\[A         up-or-search
bind  -k  dc            delete-char
bind  -k  end           end-of-line
bind  -k  home          beginning-of-line
bind  --  \u0027       \u02C8
bind  --  \e\x20       'commandline -i \u00A0'
bind  --  !!           'commandline -i "( $history[1] )"'
bind  --  `            'commandline -i ϟ'
bind  --  £            'commandline -i \#'
bind  --  ∫            'commandline -i ʃ'
bind  --  ∑           'commandline -i Ʃ'
bind  --  ß            'commandline -i ʃ'
bind  --  Í            'commandline -i Ʃ'
bind  --  \es          'commandline -i ʃ'
bind  --  \eS          'commandline -i Ʃ'
bind  --  \e\[114\;7u   repaint                # ⟨ctrl⟩+⟨alt⟩+r
bind  --  \e\[122\;7u   undo                   # ⟨ctrl⟩+⟨alt⟩+z
bind  --  \e\[90\;7u    redo                   # ⟨shift⟩+⟨ctrl⟩+⟨alt⟩+z
bind  --  \e\[13\;2u   'commandline -i \n'    # ⟨shift⟩+⟨enter⟩
bind  --  \e\[32\;2u   'commandline -i \ '    # ⟨shift⟩+⟨space⟩
bind  --  \u00A0       'commandline -i "$FS"' # ⟨L-alt⟩+⟨space⟩
bind  --  \cc          'commandline "" ; emit fish_cancel'
bind  --  ...          'commandline -i "‥ "'
# bind  --  =            'commandline -i = ; set fish_bind_mode math'

bind  -M  math ''       self-insert
bind  -M  math ' '      self-insert expand-abbr
bind  -M  math \n       execute
bind  -M  math \r       execute
bind  -M  math -k dc    delete-char
bind  -M  math -k nul  'commandline -i " "'
bind  -M  math \cc     'commandline "" ; emit fish_cancel ; set fish_bind_mode default'
bind  -M  math -k right forward-char
bind  -M  math '('     'commandline -i （'
bind  -M  math ')'     'commandline -i ）'
bind  -M  math '*'     'commandline -i ×'
bind  -M  math '/'     'commandline -i ÷'
bind  -M  math '-'     'commandline -i –'
bind  -M  math 'x'     'commandline -i 𝑥'
bind  -M  math 'y'     'commandline -i 𝑦'
