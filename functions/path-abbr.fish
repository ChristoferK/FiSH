function path-abbr
		stdin
		set argv "$argv" $0
		[ "$argv" ] || 
		set argv "$PWD"

		string replace -r  -- ^$HOME \~ $argv  |
		string replace -ra -- '(?x) /\.*[^./]
                                       \K [^/]* (?=/)' ''
end
