function stdin --no-scope-shadowing
		count $0 | read -- N
		[ ! -t 0 ] || return

		while read --token \
		           --array Ø
		      math -- $N + 1 |
		      read --  N
		      set  -- $N  $Ø
		      set  -a  0 "$Ø"
		end

		return

		string replace --all --regex --         [(
		string escape  --style=regex -- $TOKENS  |
		string escape  -- )] '\\\$0' $0 | cat -n |
		string replace --regex -- ^ set | source

		count $0 | read N

		[ $N != 1 ]
		and  return

		set 0 $1
		count $0 | read N
		printf '%s\n'  $1 |
		read -L  ( seq $N )
end
