function escape
		stdin

		string replace --all --regex -- [(
		printf %b $argv \\c$argv $TOKENS |
		string escape  --style=regex --  |
		string escape  -- )] '\\\$0' $0
end
