# Defined in /var/folders/ht/0ty_c8mx16v69csh949g3rvr0000gn/T//fish.QKyxOH/apps.fish @ line 2
function apps
	if [ "$argv[1]" = "--all" ]
		OSASCRIPT -e 'tell app "Finder" to get the displayed name of ¬
			                           every application file of ¬
						      the entire contents of ¬
					    	(path to applications folder)' \
			| string split ', ' \
			| SORT -f \
			| LAM -f-30.30 - - ^ /dev/null
		return $status
	else
		LSAPPINFO processList \
			| GREP -E -io '"[^"]+"' \
			| TR -d \" \
			| TR '_' ' ' \
			| SORT -fu
		return $status
	end
end
