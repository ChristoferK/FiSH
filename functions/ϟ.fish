function ϟ
		[ "$argv" ] && set argv "$argv"
		stdin
		printf %s\n $argv $0 | fish_indent --dump >/dev/null 2>|
		string replace -r -- '^(! )*' '#:' |
		string match   -v -- '#:' |
		string escape  -n -- | cat -n |
		string replace -r -- '\t\\\#:' " " |
		string replace -r -- '^\h+\d+' 'set -a ϟ' |
		source
		set -S ϟ
		@ $ϟ
		return
		string match -a -r -- "^argument: \K.*" $ϟ |
		string replace -ar -- "^'\(?|\)?'\$" ""
end
