function escape
		stdin || return

		string replace --all --regex -- [(
		printf %b $argv \\c$argv $TOKENS |
		string escape  --style=regex --  |
		string escape  -n -- )] '\\\$0' $0
end
