function path-abbr
		stdin
		set argv "$argv" $0
		not [ "$argv" ]  &&
		set argv "$PWD"

		string replace -r  -- ^$HOME \~ $argv  |
		string replace -ra -- '(?x) /\.*[^./]
		                       \K [^/]* (?=/)' ''
end
