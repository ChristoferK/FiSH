function path-abbr
		stdin && set --append argv $0
		[ "$argv" ] || set -l argv $PWD

		string replace -r -- "^$HOME" "~" $argv |
		string replace -r -a -- '(?x) / \.*  [^/]
		                          \K  [^/]* (?=/)
		                        ' ""
end
