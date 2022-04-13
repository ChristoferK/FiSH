function 'on:var[COLUMNS]' --on-variable COLUMNS
		  tabs 1,8,( string join -- "," \
		                   +4{,,,,}{,,} )
		# tabs 1,( seq -s, 8 4 $COLUMNS )
end
