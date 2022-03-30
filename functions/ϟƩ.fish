function ϟƩ
		not [ "$argv" ] ||
		set argv "$argv"

		stdin
		set -g ϟƩ

		printf %s\n $argv $0 | fish_indent --dump >&- 2>|
		string replace --regex -- '^(! )*' "#:"         |
		string match   --invert    -- "#:"              |
		string escape  --no-quoted -- | cat -n          |
		string replace --regex -- "\t\\\#:" " "         |
		string replace --regex -- "^\h+\d+" "set -a ϟƩ" | source

		return
end
