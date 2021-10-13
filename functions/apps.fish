# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.mUcqRM/apps.fish @ line 2
function apps
	set col (= $COLUMNS/2 )

	if [ "$argv[1]" = "--all" ]
		basename -s .app /Applications/*.app \
		                 /Applications/*/*.app \
				 /System/Library/CoreServices/*.app \
			| sort -fdi \
			| lam -f-$col.$col - - \
			2>/dev/null

	else if [ "$argv[1]" = "--bringForwardOrder" ]
		
		lsappinfo metainfo \
		        | grep bringForwardOrder \
			| grep -E -o '"[^"]+"' \
			| tr -d "\""
	else
		
		lsappinfo processList \
			| grep -E -io '"[^"]+"' \
			| tr -d "\"" \
			| tr "_" " " \
			| sort -fu
	end

	return (true)
end
