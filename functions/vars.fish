function vars
		[ "$argv" ] || set argv ""
		set | string match -er -- '(?x) ^\H*
		(?:'( string join -- \| \\Q$argv\\E
		)\) | ϟ=\n\t while read -t -l -a x
			begin printf '%s: ' $x[1]
				  printf '%s\c' {"{$ϟ",$x[3]}
				  string join   -- ,$ϟ (
				  string escape --  $x )[2..]
				  printf '%s\c' {"}\n",$x[3]}
			end | fish_indent --ansi
		end | string collect --
end
