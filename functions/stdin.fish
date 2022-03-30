function stdin --no-scope-shadowing
		set --global N 0
		set --erase    0
		[ ! -t 0 ]
		or  return

		argparse L/line -- $argv
		printf {1,$_flag_line} 0 |
		read --local line

	  # while read --token \
	  #            --array Ø
	  #       math -- $N + 1 |
	  #       read --  N
	  #       set  -- $N  $Ø
	  #       set  -a  0 ( string  \
	  #                    escape  \
	  #                    -- "$Ø" )
	  # end

		TOKENS=( string escape  --style=regex  -- \
		       ( string join    -- "" $TOKENS  )  |
		         string escape  -- ) begin cat -n |
		         string replace --all --regex  -- \
		                        [$TOKENS] '\\\$0' |
		         string replace --regex  -- "(?x) ^
		                           \h+ ( [0-9]+ )
		                           \t  ( .* ) " '
		                           set -- $1 $2
		                           set -a 0 "\$$1"
		                           set -g N  $1'
		end | source

		[ $N = $line \
		] ||  return 0

		set -- 0 $1
		count $0 | read N
		printf '%s\n'  $1 |
		read -L  ( seq $N )
end
