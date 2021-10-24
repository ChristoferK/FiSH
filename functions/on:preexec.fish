function on:preexec --no-scope-shadowing --on-event fish_preexec
	  0=( string escape  --style=regex -- "$FiSH_TOKENS"
	) 1=( string replace --all --regex -- [$0] '\\\$0' $argv
	) 2=( commandline --tokenize --input="$1"
	) set --global ϟ $2
end
