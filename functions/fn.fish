function fn
		not set --local --query ϟ
		and set --local ϟ
		or  [ ! "$argv" \
		    ] && return

		set --local FUNCPATH "$fish_function_path[1]"
		set --local ƒn ( basename -s .fish "$argv[1]" )
		set --local FiSH "$FUNCPATH/$ƒn.fish"

		[ ! -f "$FiSH" ] && printf '%s\n' \
		"function $ƒn" \t\t end > "$FiSH"

		NUL= switch $ϟ
		       case {fn-,}edit
		            vim    "$FiSH"
		            source "$FiSH"
		       case {fn-,}{show,cat} funcat
		            cat -n "$FiSH"
		       case $NUL fn \*
		            switch $ƒn
		              case $NUL
		                   source "$FiSH"
		              case \*
		                #  basename -s .fish $FiSH |
		                #  string match  --  $argv |
		                #  string escape --  |
		                #  read --local ƒn  ||
		                #  set  --local ƒn   $argv[1]
		                   string escape -- $ƒn |
		                   read  --local --  ƒn
		                   funced --save -- $ƒn
		            end # switch $ƒn
		end # switch $ϟ

		ϟ=$ϟ fn $argv[2..]
end
