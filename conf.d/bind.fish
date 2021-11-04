not status is-interactive
and exit -1

fish_default_key_bindings

bind  --  \n          self-insert
bind  --  \e\[F       end-of-line
bind  --  \e\[H       beginning-of-line
bind  -k  backspace   backward-k ill-line
bind  --  \e\[A       up-or-search
bind  -k  dc          delete-char
bind  -k  end         end-of-line
bind  -k  home        beginning-of-line
bind  --  \u0027      \u02C8
bind  --  \e\x20      'commandline -i \u00A0'
bind  --  \#          'commandline -r "$history[1]"'
bind  --  `           'commandline -i ϟ'
bind  --  £           'commandline -i \#'
bind  --  ∫           'commandline -i ʃ'
bind  --  ∑          'commandline -i Ʃ'
bind  --  ß           'commandline -i ʃ'
bind  --  Í           'commandline -i Ʃ'
bind  --  \es         'commandline -i ʃ'
bind  --  \eS         'commandline -i Ʃ'
bind  --  \e\[114\;7u repaint             # ⟨ctrl⟩+⟨alt⟩+r
bind  --  \e\[122\;7u undo                # ⟨ctrl⟩+⟨alt⟩+z
bind  --  \e\[90\;7u  redo                # ⟨shift⟩+⟨ctrl⟩+⟨alt⟩+z
bind  --  \e\[13\;2u  'commandline -i \n' # ⟨shift⟩+⟨enter⟩
bind  --  \e\[32\;2u  'commandline -i \ ' # ⟨shift⟩+⟨space⟩
bind  --  \cc         'commandline "" ; emit fish_cancel'
bind  --  ...         'commandline -i "‥ "'

bind  -M  math '('    'commandline -i （'
bind  -M  math ')'    'commandline -i ）'
bind  -M  math '*'    'commandline -i ×'
bind  -M  math '/'    'commandline -i ÷'
bind  -M  math '-'    'commandline -i −'
