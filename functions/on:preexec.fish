function on:preexec --no-scope-shadowing --on-event fish_preexec
		  set --erase ( set --names |
		      string match  --regex \
		             -- "^[0-9]+\$" ) 2>&- 1>&2

		  set --global ϟ ( commandline --tokenize --input=(
		                   printf '%s' "$argv" | escape ) )

		  return $status

		  0=( string escape  --style=regex -- "$TOKENS"
		) 1=( string replace --all --regex -- [$0] '\\\$0' $argv
		) set --global ϟ ( commandline --tokenize --input="$1" )
end
