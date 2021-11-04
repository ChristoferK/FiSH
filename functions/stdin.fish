function stdin --no-scope-shadowing
		set --erase --global -- 0 N
		set -- 0
		set -- N 0

		not [ -t 0 ]
		or  return 1

		read --delimiter=\n \
		     --null --array 0
		set  --erase 0[-1]

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
