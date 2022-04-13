function math
		argparse --name=math s/scale= \
		                     b/base=  -- $argv

		stdin

		printf %s "$argv + $0 + 0" |
		builtin math {-s,$_flag_s} \
		             {-b,$_flag_b}
end
