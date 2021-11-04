function fn
		[ ! "$argv" ] && basename -s ".fish" \
			"$fish_function_path[1]"/*.fish  |
			string join -- \40 | fold -s -w  \
			"$COLUMNS" && return

		Fn=( string escape -- "$argv"
		) begin funced   "$Fn"
			and funcsave "$Fn"
		end
end
