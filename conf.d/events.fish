for FiSH in $fish_function_path/on:*.fish
	ƒn=( string match --re -- '(?x)
	     ^ .*/\K .+ (?=\Q.fish\E) $        
	     ' "$FiSH"
	     ) begin type -q $ƒn ||
	             source "$FiSH"
	             eval $ƒn ; end
end