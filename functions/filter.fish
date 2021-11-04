function filter
		set --local chars ( string split \
		                    --  "" $argv )
		not [ "$chars[1]" != \{ ]
		and [ "$chars[-1]" = \} ]
		or  return ( err Script must be \
		             enclosed in {...}  )

		set argv ( string replace -r -- '^\{' "begin " "$argv" |
		           string replace -r -- '\}$' " ; end"         |
		           string join -- \n | string collect --       )

		stdin || return ( err stdin = {} )

		set --local I ( seq  $N )

		for _I in $I
			string replace --all -- \
			       @ "$$_I" "$argv" |
			       source &>/dev/null
			or set --erase $_I
		end

		printf %s\n $$I
end
