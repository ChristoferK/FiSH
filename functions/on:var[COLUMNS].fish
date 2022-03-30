function 'on:var[COLUMNS]' --on-variable COLUMNS
		tabs ( string join   -- '' 1,4 (
		       string repeat -n ( math \
		       $COLUMNS/4 - 1 ) -- ,+4 )
		     ) &>/dev/null || tabs 1,4,(
		       printf %s, +4{,,,,,,,,} \
		                  +4{,,,,,,} )+4
end
