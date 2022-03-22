function fn
		not set --local --query ϟ
		and set --local ϟ
		or  [ ! "$argv" \
		    ] && return

		set --local FiSH $argv[1]
		basename -s .fish "$FiSH" |
		       ^ { path  "@.fish"
		       } | read -L "FiSH"

		NUL= switch $ϟ
		       case {fn-,}edit
		            vim    "$FiSH"
		            source "$FiSH"
		       case {fn-,}{show,cat} funcat
		            cat -n "$FiSH"
               case $NUL fn \*
                    FiSH="$fish_function_path[1]"/{.,}*.fish \
                    ƒn=$argv[1] switch $ƒn
                                case $NUL
                                     basename -s .fish $FiSH |
                                     string join    -- \040  |
                                     fold  -s -w $COLUMNS 1>&2
                                case \*
                                  #  basename -s .fish $FiSH |
                                  #  string match  --  $argv |
                                  #  string escape --  |
                                  #  read --local ƒn  ||
                                  #  set  --local ƒn   $argv[1]
                                     string escape -- $ƒn |
                                     read  --local --  ƒn
                                     funced --save -- $ƒn
                    end # switch $argv
		end # switch $ϟ

		ϟ=$ϟ fn $argv[2..]
end
